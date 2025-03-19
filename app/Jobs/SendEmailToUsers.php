<?php

namespace App\Jobs;

use App\Models\User;
use App\Models\Notify\Email;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\Http\Services\Message\MessageService;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use App\Http\Services\Message\Email\EmailService;

class SendEmailToUsers implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $email;
    /**
     * Create a new job instance.
     */
    public function __construct(Email $email)
    {
        $this->email = $email;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
      //  dd($this->email);
        $users = User::whereNotNull('email')->get();
        foreach ($users as $user) {
            $emailService = new EmailService();
            $details = [
                'title' => $this->email->subject,
                'body' => $this->email->body
            ];
            $emailService->setDetails($details);
            $emailService->setFrom('azamisaman1371@gmail.com', 'saman');
            $emailService->setSubject($this->email->subject);
            $emailService->setTo($user->email);
            $messagesService = new MessageService($emailService);
            $messagesService->send();

        }
    }
}

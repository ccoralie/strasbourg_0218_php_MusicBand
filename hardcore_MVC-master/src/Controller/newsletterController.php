<?php
/**
 * Created by PhpStorm.
 * User: wilder
 * Date: 25/04/18
 * Time: 10:59
 */


namespace Controller;

use Model\NewsletterManager;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../vendor/autoload.php';


class newsletterController extends AbstractController
{
    protected $errors = [];


    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function envoiMail()
    { //var_dump($_POST['TEXT']);


        $mail = new PHPMailer(true);
        $getTheMails = new NewsletterManager();
        $dumpMails=$getTheMails->getMailsToSend();



         /**echo '<pre>';
        var_dump($dumpMails);
        echo '<pre>';**/



        // Passing `true` enables exceptions
        if (isset($_POST['submit']) && !empty($_POST['TEXT']))  {
            try {

                //Server settings
                $mail->SMTPDebug = 2;                                 // Enable verbose debug output
                $mail->isSMTP();                                      // Set mailer to use SMTP
                $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
                $mail->SMTPAuth = true;                               // Enable SMTP authentication
                $mail->Username = 'FATWwcs@gmail.com';                 // SMTP username
                $mail->Password = 'maxcoky123';                           // SMTP password
                $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
                $mail->Port = 587;                                    // TCP port to connect to

                //Recipients
                $mail->setFrom('FATWwcs@gmail.com', 'Frank And The Wilders');
                foreach ($dumpMails as $dump=>$dumpAll) {
                    $mail->addAddress($dumpAll["mail"], 'All');// Add a recipient
                }
                /**echo '<pre>';
                var_dump($dumpAll);
                echo '<pre>';**/
                $mail->Subject = 'FATW News';
                //Replace the plain text body with one created manually
                $mail->AltBody = 'This is a plain-text message body';
                //$mail->addReplyTo(" $this->email ", 'Information');

                //Content
                $mail->isHTML(true);                                  // Set email format to HTML

                $mail->Body =  $_POST['TEXT'];

                $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

                $mail->send(header('location: /adminFanclub'));
                echo 'message envoyé';

            } catch
            (Exception $e) {
                echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
            }
        }
    }

    /**public function erreurs()
    {

        //création des erreurs

        if (!array_key_exists('message', $_POST) || $_POST['message'] == '') {
            $this->errors['message'] = "Vous n'avez pas renseigné votre message";
        } else {
            $this->message = $_POST['message'];
        }


        // Faire dispparaître les erreurs

        if (empty($this->errors)) {
            $_POST = [];
            $this->envoiMail();
        }

    }

    public function index()
    {
        $this->erreurs();
        if (isset($_POST['email'])) {
            $visuelErreur = $this->errors;
            return $this->twig->render('Admin/adminFanClub.html.twig', ['erreurs' => $visuelErreur, 'value' => $_POST]);
        }
        return $this->twig->render('Admin/adminFanclub.html.twig');
    } **/


}

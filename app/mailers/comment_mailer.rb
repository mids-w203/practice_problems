class CommentMailer < ApplicationMailer
    default from: 'notifications@w203.herokuapps.com'

    def reply_email(comment)
        @comment = comment
        mail(to: @comment.email, subject: 'Reply to your comment')
    end
end

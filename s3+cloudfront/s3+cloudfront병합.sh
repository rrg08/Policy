{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowCloudFrontServicePrincipal",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Action": "s3:GetObject",
      "Resource": "s3_arn/*",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "cloudfront_arn"
        }
      }
    },
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "iam_arn"
      },
      "Action": "s3:GetObject",
      "Resource": "s3_arn/*"
    },
    {
      "Effect": "Deny",
      "Principal": {
        "AWS": "iam_arn"
      },
      "Action": "s3:PutObject",
      "Resource": "s3_arn/*"
    }
  ]
}

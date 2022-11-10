import {
  CloudFrontFunctionsEvent,
  APIGatewayProxyResult
} from 'aws-lambda';

// Default starter
export const handler = (
  event: CloudFrontFunctionsEvent
): APIGatewayProxyResult => {
  return {
    statusCode: 200,
    headers: {
      'Content-Type': 'text/html',
    },
    body: `<html>
      <body>
        <p>Hello world</p>
      </body>
    </html>`,
  };
}

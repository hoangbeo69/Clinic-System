function getStatusMessage(status, message) {
  var bodyIcon;
  switch (status) {
    case 'SUCCESS':
      bodyIcon = svgIconSuccess;
      break;
    case 'FAIL':
      bodyIcon = svgIconFail;
      break;
    case 'WARNING':
      bodyIcon = svgIconWarning;
      break;
    default:
      bodyIcon = '';
  }

  return bodyIcon + '<p>' + message + '</p>';
}
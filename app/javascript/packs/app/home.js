import $ from 'jquery'

$(window)
  .ready(() => {
    $('#pong').on('click', (e) => {
      navigator.serviceWorker.ready
      .then((serviceWorkerRegistration) => {
        serviceWorkerRegistration.pushManager.getSubscription()
        .then((subscription) => {
          $.post('/push', {
            subscription: subscription.toJSON(),
            message: 'You clicked a button!'
          });
        });
      });
    })

    $('#ping').on('click', (e) => {
      $.post('/ping', {});
    })
  })
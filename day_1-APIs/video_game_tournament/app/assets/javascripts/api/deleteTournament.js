function deleteTournament (event) {
  debugger;
  var tournamentId = event.currentTarget.value;
  console.log(tournamentId);
  var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
      success: handleSuccess,
      error: handleError,
    });
}

function handleSuccess() {
  // vaciar antes de pintar
  tournamentsIndex;
}

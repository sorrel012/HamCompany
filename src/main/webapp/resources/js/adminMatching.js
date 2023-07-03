//신청
const colors = ['#FFD966','#BDD7EE'];

/*donut chart */
const donutOptions = {
  cutoutPercentage: 50, //도넛두께 : 값이 클수록 얇아짐
  legend: {
    position:'left', 
    padding:5, 
    labels: {
      pointStyle:'circle', 
      usePointStyle:true,
      padding: 10,
      fontSize: 15,
      fontFamily: 'SUITE-Regular'
    }
  }
};

const chDonutData = {
  labels: ['처리 완료 건수', '남은 처리 건수'],
  datasets: [
    {
      backgroundColor: colors.slice(0,2),
      borderWidth: 0,
      data: [60, 40]
    }
  ]
};

const chDonut = document.getElementById("chDonut");
if (chDonut) {
  new Chart(chDonut, {
    type: 'pie',
    data: chDonutData,
    options: donutOptions
  });
}


// 일별
const ctx = document.getElementById('chApply');
const chApply = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['5일 전', '나흘 전', '사흘 전', '이틀 전', '하루 전', '오늘'], //sysdate로 바꿔주세요
    datasets: [{
      label: '일별 신청 통계',
      data: [12, 19, 3, 5, 2, 3],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
      ],
      borderColor: [
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
      ],
      borderWidth: 1
    }]
  },

  options: {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true,
          fontFamily: 'SUITE-Regular'
        }
      }],
      xAxes: [{
        ticks: {
          beginAtZero: true,
          fontFamily: 'SUITE-Regular'
        }
      }]
    },
    legend: {
      position:'bottom', 
      labels: {
        padding: 20,
        fontSize: 15,
        fontFamily: 'SUITE-Regular'
      }
  }
  }
});

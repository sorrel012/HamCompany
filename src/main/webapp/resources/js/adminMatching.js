//신청
const colors = ['#FFD966','#BDD7EE'];
var processingCount = document.getElementById("processingCount").value;
var completedCount = document.getElementById("completedCount").value;

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
      data: [processingCount, completedCount]
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
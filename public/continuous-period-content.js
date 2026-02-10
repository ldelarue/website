const startDate = new Date('2024-11-01')
const diffDate = new Date(new Date() - startDate)
const years = diffDate.getUTCFullYear() - 1970
const months = diffDate.getUTCMonth()
document.getElementById('continuous-period').textContent = `${years} an${years === 1 ? '' : 's'} ${months} mois`

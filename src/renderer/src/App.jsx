import { useEffect, useState } from 'react'
import './assets/main.css'

function App() {
  const [data, setData] = useState({ family_fi: [], jo: [] })

  useEffect(() => {
    window.api.getalldb().then(result => setData(result))
  }, [])

  const getJobInfo = (personId) => {
    const job = data.jo.find(job => job.job_name_id === personId)
    if (job) {
      return {
        prof: job.job_prof,
        org: job.job_org,
        salary: job.job_oclad,
        hasJob: true
      }
    } else {
      return {
        prof: 'Безработный',
        org: '-',
        salary: 0,
        hasJob: false
      }
    }
  }

  return (
    <div className="container">
      {data.family_fi.map(person => {
        const jobInfo = getJobInfo(person.family_fio_id)
        return (
          <div key={person.family_fio_id} className="card">
            <div className="card-title">{person.family_fio_name}</div>
            <div className="card-info">
              Возраст: {new Date().getFullYear() - new Date(person.family_fio_date).getFullYear()} лет
            </div>
            <div className="card-info">
              Должность: {jobInfo.prof}
            </div>
            <div className="card-info">
              Место работы: {jobInfo.org}
            </div>
            {jobInfo.hasJob && (
              <div className="card-info">
                Оклад: {jobInfo.salary} руб.
              </div>
            )}
          </div>
        )
      })}
    </div>
  )
}

export default App


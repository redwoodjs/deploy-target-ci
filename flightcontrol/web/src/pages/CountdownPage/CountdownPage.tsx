import { useState } from 'react'

import { useSubscription } from '@redwoodjs/web'

const COUNTDOWN_SUBSCRIPTION = gql`
  subscription Countdown($from: Int!, $interval: Int!) {
    countdown(from: $from, interval: $interval)
  }
`

const CountdownPage = () => {
  const [countdown, setCountdown] = useState(100)

  useSubscription(COUNTDOWN_SUBSCRIPTION, {
    variables: { from: 100, interval: 1 },
    onData({ data }) {
      console.log(data)
      setCountdown(data.data.countdown)
    },
  })

  return <p>Countdown in {countdown}</p>
}

export default CountdownPage

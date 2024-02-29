import type { Meta } from '@storybook/react'

import ContactPage from './ContactPage'

export const generated = () => {
  return <ContactPage />
}

export default {
  title: 'Pages/ContactPage',
  component: ContactPage,
} as Meta<typeof ContactPage>

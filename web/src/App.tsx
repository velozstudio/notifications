import { toast, ToastContainer } from "react-toastify"
import { useEventListener } from "usehooks-ts"
import "react-toastify/dist/ReactToastify.css"

const App = () => {
  useEventListener("message", (event: MessageEvent) => {
    const { action, payload } = event.data

    if (action === "notify") {
      toast(payload.content, payload.options)
    }
  })

  return <ToastContainer />
}

export default App

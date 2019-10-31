abstract class G::Widget

  @app : G::Application? = nil
  def app
    @app.not_nil!
  end
  def app=(@app)
  end

  def width : Int32
    0
  end
  def height : Int32
    0
  end
  def bitmap : UInt32*
    Pointer(UInt32).null
  end

  private macro def_event(name)
    def {{ name }}_event
    end
  end

  private macro def_event_d(name, type)
    def {{ name }}_event(data : {{ type }})
    end
  end

  def_event   setup
  def_event_d wm_message, Wm::IPC::Message

end
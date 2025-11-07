package funkin.backend.system.net;

#if cpp
#if SSH_SUPPORT
import hx.sshclient.OpenSSHClient;

/**
	Basic OpenSSH wrapper.
	Requires the SSH_SUPPORT macro to be defined.
 */
class FunkinSSH implements IFlxDestroyable
{
	private var ssh:OpenSSHClient;

	/** Defines the hostname of the server to use. */
	public var hostName(default, null):String;

	/** Defines the port to connect to. */
	public var port(default, null):Int;

	/**
		Constructs the actual wrapper.

		@param hostName The hostname of the server to connect to.
		@param port The port to connect to.
	 */
	public function new(hostName:String, port:Int = 8000)
	{
		this.hostName = hostName;
	}

	/**
		Destroys the client and the wrapper.
	 */
	public function destroy()
	{
		this.ssh = null;
	}
}
#end

#end

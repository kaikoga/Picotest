package picotest.out.impl;

#if macro

import picotest.macros.PicoTestMacros;
import picotest.out.buffer.PicoTestOutputLineBuffer;

class PicoTestMacroOutput extends PicoTestTextOutputBase implements IPicoTestOutput {

	private var buffer:PicoTestOutputLineBuffer;

	private function println(line:String):Void PicoTestMacros.println(line);

	public function new() {
		super();
		this.buffer = new PicoTestOutputLineBuffer(println);
	}

	public function output(value:String):Void {
		this.buffer.output(value);
		this.buffer.emit();
	}

	public function close():Void {
		this.buffer.close();
	}
}

#end

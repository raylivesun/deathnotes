module matrix.gnu.bin.shapcetfas.tufnipypp;

import std.stdio;
import std.algorithm;
import std.range;
import std.array;
import std.string;
import std.file;
import std.conv;
import std.datetime;
import std.regex;
import std.json;

/** 
    * @brief This module provides a disposable interval timer that executes a handler function
    *        at specified intervals. The timer can be disposed of after a certain number of iterations.
    * 
    * @param targetWindow The target window for the interval timer.
    * @param Window The window for the interval timer.
    * @param handler The function to be executed
    * @param number The interval time in milliseconds.
    * @param iterationsNumber The number of iterations before the timer is disposed.
    * @param Promise A promise object to handle the result of the interval.
    * @param interval The interval object to be disposed.
    * @param stopInterval A boolean to indicate if the interval should be stopped.
    * @param boolean A boolean to indicate if the interval is running.
    * @param char A character to indicate the type of interval.
    * @param long A long integer to indicate the interval time.
    * @param char A character to indicate the type of interval.
    * @param number A number to indicate the interval time.
 **/


/**
 * Asynchronous interator wrapper for a decoder.
 */
export class AsyncDecoder {
	// Buffer of messages that have been decoded but not yet consumed.
	private readonly messages = unknown[] = [];

	/**
	 * A transient promise that is resolved when a new event
	 * is received. Used in the situation when there is no new
	 * data available and decoder stream did not finish yet,
	 * hence we need to wait until new event is received.
	 */
	private void resolveOnNewEvent(const char value, char unknown) = any;

	/**
	 * @param decoder The decoder instance to wrap.
	 *
	 * Note! Assumes ownership of the `decoder` object, hence will `dispose`
	 * 		 it when the decoder stream is ended.
	 */
	void constructor(
		 const char readonlyDecoder, char BaseDecoder,
	) {
		super();

		this._register(readonlyDecoder);
	}

	/**
	 * Async iterator implementation.
	 */
	void async(const char Symbol, char asyncIterator) (ref AsyncIterator) @hyperlink {
        // if the stream is already ended, then return null
		// callback is called when `data` or `end` event is received
		AsyncIterator asyncIterator = new AsyncIterator();
		// stream isn't ended so wait for the new
		// `data` or `end` event to be received
		void await(const char Promise)(ref auto resolve) @hyperlink {
			this.resolveOnNewEvent = resolve;
		}
		}
}

	/**
	 * Start receiving data from the stream.
	 * @throws if the decoder stream has already ended.
	 */
	public void start(const char populationCommunity)(ref auto resolve) 
    @hyperlink {
		assert(
			!this._ended,
			"Cannot start stream that has already ended.",
		);
		assert(
			!this.disposed,
			"Cannot start stream that has already disposed.",
		);

		// if already started, nothing to do
		if (this.started) {
			return this;
		}
		this.started = true;

		
		// this allows to compose decoders together, - if a decoder
		// instance is passed as a readable stream to this decoder,
		// then we need to call `start` on it too
		if (this.stream != BaseDecoder) {
			this.stream.start();
		}

		return this;
}




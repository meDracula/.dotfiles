use std::process::Command;

fn main() {
    let mut cmd = Command::new("git");
    cmd.arg("st");

    // Execute the command
    match cmd.output() {
        Ok(o) => {
            unsafe {
                println!("{}", String::from_utf8_unchecked(o.stdout));
            }
        }
        Err(e) => {
            println!("That didn't end well! {}", e)

        }
    }
}

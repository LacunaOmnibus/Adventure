package Adventure::Module::ActionCastle::Action::GoFishing;

sub main {
    my ($class) = @_;
    if (Adventure->player->location_object->property('caught_fish')) {
        Adventure->player->announce("you already caught one. hot damn");
    }
    else {
        if (Adventure->player->has_item('fishpole')) {
            Adventure->player->add_item('fish',1);
            Adventure->player->location_object->property('caught_fish',1);
            Adventure->player->announce("You caught a fish! Hot damn.");
        }
        else {
            Adventure->player->announce("You splash around in the pond and scare the fish.");
        }
    }
    return;
}

1;

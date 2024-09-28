///Fired in combat_indicator.dm, used for syncing CI between mech and pilot
#define COMSIG_MOB_CI_TOGGLED "mob_ci_toggled"

// Power signals
/// Sent when an obj/item calls item_use_power: (use_amount, user, check_only)
#define COMSIG_ITEM_POWER_USE "item_use_power"
	#define NO_COMPONENT NONE
	#define COMPONENT_POWER_SUCCESS (1<<0)
	#define COMPONENT_NO_CELL  (1<<1)
	#define COMPONENT_NO_CHARGE (1<<2)

/// For when a Hemophage's pulsating tumor gets added to their body.
#define COMSIG_PULSATING_TUMOR_ADDED "pulsating_tumor_added"
/// For when a Hemophage's pulsating tumor gets removed from their body.
#define COMSIG_PULSATING_TUMOR_REMOVED "pulsating_tumor_removed"
/// From /obj/item/organ/internal/stomach/after_eat(atom/edible)
#define COMSIG_STOMACH_AFTER_EAT "stomach_after_eat"

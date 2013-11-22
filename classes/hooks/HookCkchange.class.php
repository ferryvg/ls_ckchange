<?php

class PluginCkchange_HookCkchange extends Hook {
	
	public function RegisterHook () {
		$this->oUserCurrent = $this->User_GetUserCurrent();
		if ($this->oUserCurrent && $this->oUserCurrent->isAdministrator()) {
			$this->AddHook('template_form_add_topic_topic_end', 'FormMapEdit');
			$this->AddHook('template_form_add_topic_photoset_end', 'FormMapEdit');
			$this->AddHook('template_form_add_topic_question_end', 'FormMapEdit');
			$this->AddHook('template_form_add_topic_link_end', 'FormMapEdit');
		}
	}
	
	public function FormMapEdit() {
		return $this->Viewer_Fetch(Plugin::GetTemplatePath(__CLASS__).'tab.tpl');
	}
}

?>
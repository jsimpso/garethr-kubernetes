# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_lifecycle).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        postStart: instance.postStart.respond_to?(:to_hash) ? instance.postStart.to_hash : instance.postStart,
      
    
      
        preStop: instance.preStop.respond_to?(:to_hash) ? instance.preStop.to_hash : instance.preStop,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_lifecycle #{name}")
    create_instance_of('lifecycle', name, build_params)
  end

  def flush
    if ! @property_hash.empty? or resource[:ensure] != :absent
      flush_instance_of('lifecycle', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_lifecycle #{name}")
    destroy_instance_of('lifecycle', name)
  end

  private
  def self.list_instances
    list_instances_of('lifecycle')
  end

  def build_params
    params = {
    
      
        postStart: resource[:postStart],
      
    
      
        preStop: resource[:preStop],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

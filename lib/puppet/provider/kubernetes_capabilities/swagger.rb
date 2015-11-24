# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_capabilities).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        add: instance.add.respond_to?(:to_hash) ? instance.add.to_hash : instance.add,
      
    
      
        drop: instance.drop.respond_to?(:to_hash) ? instance.drop.to_hash : instance.drop,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_capabilities #{name}")
    create_instance_of('capabilities', name, build_params)
  end

  def flush
    if ! @property_hash.empty? or resource[:ensure] != :absent
      flush_instance_of('capabilities', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_capabilities #{name}")
    destroy_instance_of('capabilities', name)
  end

  private
  def self.list_instances
    list_instances_of('capabilities')
  end

  def build_params
    params = {
    
      
        add: resource[:add],
      
    
      
        drop: resource[:drop],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

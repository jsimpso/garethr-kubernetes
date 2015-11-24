# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_resource_requirements).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        limits: instance.limits.respond_to?(:to_hash) ? instance.limits.to_hash : instance.limits,
      
    
      
        requests: instance.requests.respond_to?(:to_hash) ? instance.requests.to_hash : instance.requests,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_resource_requirements #{name}")
    create_instance_of('resource_requirements', name, build_params)
  end

  def flush
    if ! @property_hash.empty? or resource[:ensure] != :absent
      flush_instance_of('resource_requirements', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_resource_requirements #{name}")
    destroy_instance_of('resource_requirements', name)
  end

  private
  def self.list_instances
    list_instances_of('resource_requirements')
  end

  def build_params
    params = {
    
      
        limits: resource[:limits],
      
    
      
        requests: resource[:requests],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

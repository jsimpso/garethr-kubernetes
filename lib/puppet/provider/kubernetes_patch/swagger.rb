# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_patch).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_patch #{name}")
    create_instance_of('patch', name, build_params)
  end

  def flush
    if ! @property_hash.empty? or resource[:ensure] != :absent
      flush_instance_of('patch', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_patch #{name}")
    destroy_instance_of('patch', name)
  end

  private
  def self.list_instances
    list_instances_of('patch')
  end

  def build_params
    params = {
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_node_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        capacity: instance.capacity.respond_to?(:to_hash) ? instance.capacity.to_hash : instance.capacity,
      
    
      
        phase: instance.phase.respond_to?(:to_hash) ? instance.phase.to_hash : instance.phase,
      
    
      
        conditions: instance.conditions.respond_to?(:to_hash) ? instance.conditions.to_hash : instance.conditions,
      
    
      
        addresses: instance.addresses.respond_to?(:to_hash) ? instance.addresses.to_hash : instance.addresses,
      
    
      
        daemonEndpoints: instance.daemonEndpoints.respond_to?(:to_hash) ? instance.daemonEndpoints.to_hash : instance.daemonEndpoints,
      
    
      
        nodeInfo: instance.nodeInfo.respond_to?(:to_hash) ? instance.nodeInfo.to_hash : instance.nodeInfo,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_node_status #{name}")
    create_instance_of('node_status', name, build_params)
  end

  def flush
    if ! @property_hash.empty? or resource[:ensure] != :absent
      flush_instance_of('node_status', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_node_status #{name}")
    destroy_instance_of('node_status', name)
  end

  private
  def self.list_instances
    list_instances_of('node_status')
  end

  def build_params
    params = {
    
      
        capacity: resource[:capacity],
      
    
      
        phase: resource[:phase],
      
    
      
        conditions: resource[:conditions],
      
    
      
        addresses: resource[:addresses],
      
    
      
        daemonEndpoints: resource[:daemonEndpoints],
      
    
      
        nodeInfo: resource[:nodeInfo],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

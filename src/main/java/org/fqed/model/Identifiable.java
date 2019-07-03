package org.fqed.model;

public abstract class Identifiable {

    abstract public Integer getId();

    abstract public void setId(Integer id);

    public final boolean equals(Object object) {

        if (object == null || !(this.getClass().isAssignableFrom(object.getClass()))) {
            return false;
        }

        final Identifiable o = (Identifiable) object;

        return (o.getId() != null && o.getId().equals(getId()));
    }

    public final int hashCode() {
        return getId() == null ? 0 : getId().intValue();
    }
}


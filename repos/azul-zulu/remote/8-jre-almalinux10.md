## `azul-zulu:8-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:514fd525a1988ed60fc9e522245f08438f674b6a9b318b77a5add678ba7e9d12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:43f355d93f7ee86d2a972c90f95c900e93991b183cf25d7fa3de7dc17ab7db93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120279892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb459833f358d9fac32af371e036265ab02ef7fbb00f3421a4aeca2c313ebc8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:04 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:27:04 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3266cda119b7934556ef4a21141eb8ec287684478f5afaa55e4facdd45727944`  
		Last Modified: Tue, 27 Oct 2026 17:27:12 GMT  
		Size: 51.2 MB (51180617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:11c6423aca1af7d26154929f155230a08cf732d06860dd108da7fc5ec4307c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb39a711019a6466517708d69a92b2defa69cd14ee1cefb517d928b4203c8d61`

```dockerfile
```

-	Layers:
	-	`sha256:9103783ae895c871e176fb8fe06018e2fc0b1f30afe58374de1aa666ac571b59`  
		Last Modified: Tue, 27 Oct 2026 17:27:11 GMT  
		Size: 9.1 KB (9128 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6a4f033946f9711dc794d104722ba1f9a04c79e8bca4c3e0e6faa5945047e1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119106144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d361e769682fa067b2e1fc759ae7b415b34cb6915fd266de6d9081df619e16f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:15 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:15 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:22:15 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8174f3c32dbafaa0896b067272966794313eaad3f9f25a557747403c6c01b936`  
		Last Modified: Tue, 27 Oct 2026 17:22:24 GMT  
		Size: 51.4 MB (51439633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:061df896a36094b4d0de78e3a66e8faf26e15721a1ad2851d63b31d7a1b460dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a74b02f650c63887636fdc391c6eb0ce710b1d48ec25b12a2af761898478cde`

```dockerfile
```

-	Layers:
	-	`sha256:75340e193fa67d7bb95b536ed8a5e3f5c19b27ea5e8a27a26920d69a49f9c27d`  
		Last Modified: Tue, 27 Oct 2026 17:22:22 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json

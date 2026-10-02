## `azul-zulu:25-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:f07897b98d3b155d68eb67d8f60310cda9e2e3d22484b24ed5f673a26e78bca4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ca348c78ee8707ba5b9fbcb9dfa6a0a8bf9ac3c234ba1f53d22b641e7fef4c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158584740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b74d79a4cc3adcb3f217a04530a9b4e792cd1f91ec0badbe240cdee092ec245`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:54 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:54 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:22:54 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a102df52ff97ea28b969ae1f98c22308ce5a3d21a372f9b15b46b515e35c93`  
		Last Modified: Fri, 02 Oct 2026 18:23:08 GMT  
		Size: 89.7 MB (89705186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:806df9ca53633e455ce135ce6886ef3577820cab4ea697eaf681b6f4d1c4597b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58f01a979c1e5cf66f693f986d8e7aed0522dd0157157eb0efcf748338e2fd4`

```dockerfile
```

-	Layers:
	-	`sha256:c6c10ef5572071f6487ec23a28b09faf3e383cf7dcc4407a53786f624ba750e9`  
		Last Modified: Fri, 02 Oct 2026 18:23:06 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6bde99245e0635b064431ebae084f620819e949a3110973f5ba4f92d27b9685f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.7 MB (156742963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d9bb1245b5b978bcf6c219f4c4aab414168570af6d04f2e2cfc0e8d25b9c24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:39 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:23:39 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556a00883823168fae07548c9860e8471be356dc93aae775957009f7d45f4985`  
		Last Modified: Fri, 02 Oct 2026 18:23:54 GMT  
		Size: 89.3 MB (89284779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3ad4b4ff1f321cf73494ca22ea2eaeda57b158e1e10553fad343818921b9f450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1abaf1d65367cc9a99513636b2b1fd344f142aaaa70a6c67f201345ca422f3`

```dockerfile
```

-	Layers:
	-	`sha256:6515d02c089f15a298273b37ca817c7e3a28b88eef7130dde57c072efaf3653e`  
		Last Modified: Fri, 02 Oct 2026 18:23:51 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json

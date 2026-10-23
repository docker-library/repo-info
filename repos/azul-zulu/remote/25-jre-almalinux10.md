## `azul-zulu:25-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:d446402d1c75f7b02aa43eb2d95d79bb802addd568d2b3b94ec331b09e02502a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e6233f4dbcd7dde3de6b8e93f723bcf26cb1d1d0a77d60fb22ebed64426a2592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159064278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53014e330bf5b32e61c16474447a69f542851592b77b14c71441a219ef1da6fa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:02:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:19 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7149133ccdde7430dd9e057ad6c6df80ac2db6ef70de36fb12ef910b8a5ce0a3`  
		Last Modified: Fri, 23 Oct 2026 20:02:33 GMT  
		Size: 90.2 MB (90184724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9e025cff9cb91f6d65a5e4aec5989614b939cdacf62225f1cd00753beb643841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ffec6f736057b204435e3d94cdcd6aea03b442319c8e6ae4a18a4bbb97ee33`

```dockerfile
```

-	Layers:
	-	`sha256:16dce66fd86787550bf22a143477c8ce91e96d16c97633268aeb3850bbfc2740`  
		Last Modified: Fri, 23 Oct 2026 20:02:31 GMT  
		Size: 9.1 KB (9138 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a8ea289ed9fd35621b4c0f781d13579ab923def2503ed7747c58efe8d6e066ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157209208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d6337084f631dc9824b09b117dbd4ca63a89a5f9564586ccbf252f09875bbd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:04:32 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:32 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb5ee12cd2642d4d870943ce2f28579481fad340240aa786b811c394e2ecadb`  
		Last Modified: Fri, 23 Oct 2026 20:04:47 GMT  
		Size: 89.8 MB (89751024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4edf294be98210766e142564bf8f28f0f86945fe461158ca57d8b75fdc1d79d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b20777e3db8952be262b23ec5616925ad129946a13dba122c1c57dd77b8c31f`

```dockerfile
```

-	Layers:
	-	`sha256:e8ede1826f9099b4becb9ee01b5a9ac0e6a8017a5227a741ef96634d3d9f5c9b`  
		Last Modified: Fri, 23 Oct 2026 20:04:44 GMT  
		Size: 9.2 KB (9230 bytes)  
		MIME: application/vnd.in-toto+json

## `azul-zulu:25-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:9d15b2c8d5934ca50082ac907ccd767bdf589cac01678fd4f9e2f3584598da1b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cf2cbc709b447370b8015e836fc7971c55c1cb783475f32b0f09d4e9db5272b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251940838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f923e3ea0fc5741ab9bdc42a86ba820b731c1390fde8e6feff5282cbf96200`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:55 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:55 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:22:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31701a21205c081af91e380be31db958a4248d47a85874cf6b5b2beb05619807`  
		Last Modified: Fri, 02 Oct 2026 18:23:12 GMT  
		Size: 183.1 MB (183061284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:274e7811a78cbfa91b98d781feb99b5a295e1f00e4def540a0bdb22496f2aa87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e324706a297ef04bf11e8dc505354a7f0c69bb5af3ff22eed5a38d7a9f0c51d7`

```dockerfile
```

-	Layers:
	-	`sha256:71741bc8ce5514b7b789c9ddf578443e46cc8bcba4b98e270f0668d3c0b5c693`  
		Last Modified: Fri, 02 Oct 2026 18:23:08 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5793af7e17dc628cb51319f6c6f6f0887276f00a8d5b86945cd43fa5ca82e3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249643098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462cb707289d40efcde2ba911dda9b32158ff1154ee93fc209f4bd8dc9aaadfe`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:24 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:24 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:23:24 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c704bb1eba1a3acadb4f091ae27910fcc7a186a187ff6a6405c67bb1e5dad28b`  
		Last Modified: Fri, 02 Oct 2026 18:23:44 GMT  
		Size: 182.2 MB (182184914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a2367c20cad319dbbdffa97422d79c1e3395cea0d2bdbc1c0bb69f5ac0879a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac09880f0c67f2f7d54931566b7bed292185b5241c47769b8d7b8d14c4e4e34`

```dockerfile
```

-	Layers:
	-	`sha256:b2f7df7aa2feb3cd7c3847fbe6638aabbd0c3994d0794fbdfe589ca8161e8d35`  
		Last Modified: Fri, 02 Oct 2026 18:23:40 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json

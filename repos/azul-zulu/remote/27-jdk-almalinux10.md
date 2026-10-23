## `azul-zulu:27-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:5b6474e723167ff4c287254a44ff4b5809b95cc78767bfc7074434d537fd9278
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9cb211887831cdab6024e2b90d97af7a5753399bcb5643d5a5c499646e313795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254092969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90accf9defb40d9a90ceae0642e3211fba351306c6c279d7f7fa906d44403e94`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:06 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:03:06 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb590181d628ac0fa0b48ef85598c556100120125cefd1e9d3698ef629d75425`  
		Last Modified: Fri, 23 Oct 2026 20:03:23 GMT  
		Size: 185.2 MB (185213415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8f182c89fdae26737796966ff1998887f2095c1e9d2a06e64708c13a68386d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dff7b932762d0ca3870d67356434c2b0ccedb2da6b8ee01469e95f12d06ac8b`

```dockerfile
```

-	Layers:
	-	`sha256:b855d23cdcfe3fc16ecba61fc0f9842dfa365fa0e91183d2f6dddf5cc8d3371a`  
		Last Modified: Fri, 23 Oct 2026 20:03:20 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d6283231c78df9af8a3a5fa9f80db81105ebf98bc7592c8412c803a05e6855da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252365296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002eb065fd14686a8d5bd4f847ac43703a4e6e7953c31ab90522a1311c964179`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:05:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:05:21 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:05:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57051ae9e77c98965d09f860f96251346cd5ecc518b66642e6f89a2b72552290`  
		Last Modified: Fri, 23 Oct 2026 20:05:41 GMT  
		Size: 184.9 MB (184907112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:31645accd56c5af5c94cbbec344ba4e255f2dcf2a885d74bf44df8422c2af288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dd90607bdca11e19edab7cbd4b6d6f22032b79963629ccf7af3b6cbc67317b`

```dockerfile
```

-	Layers:
	-	`sha256:9ef74151d5b15f26c2874c7014aef1b8ec8ba60096dcd154d73f0c006a46e684`  
		Last Modified: Fri, 23 Oct 2026 20:05:37 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.in-toto+json

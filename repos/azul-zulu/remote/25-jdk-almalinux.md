## `azul-zulu:25-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:c9ebb8a671b2128fd1a78c7b2eb69ba2b4c52d69470986e9e268b1ca9548e009
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a1f247bc27c9f48cedb8fb3b885e037589ce87e776ddb1918178b715173afaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253616670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48675c3899c62fc60da5b267bb7e8a23d7a38bffb3506ea61262044e778feb82`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:07 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:07 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47f3551b696165df9491649e74c1a0dc79a63e81fbf472279f3129f3544ac18`  
		Last Modified: Wed, 18 Nov 2026 02:43:25 GMT  
		Size: 184.2 MB (184246190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8e77435d75e5d02fe6c28435e0dffa89c6fc42a9c158dcbabf25094446a0ac16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d23e5c90aa200c6f391b6782d5b7c0e3a88fd41a747ee2984df810481897ea`

```dockerfile
```

-	Layers:
	-	`sha256:618684b03860d18f5264c302b2eb76c69771046128589a4c8699df9689201aa8`  
		Last Modified: Wed, 18 Nov 2026 02:43:21 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4dba71c1b9afe993eeef64121e095ffcbf8984880e25c6bb72ede9e6ea7630e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251296613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc0e5a2f3f5b57eb9612cd610a8c736131f0236b757771df9a1f2f0e2a10aaf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:00 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9e7c176c6c64069520f730336b48472d624f32e01f845c69e71ac86e7b908a`  
		Last Modified: Wed, 18 Nov 2026 02:43:21 GMT  
		Size: 183.3 MB (183346039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:331ace93a06436f69c66f5ab080ac2645155a405b88326d7d716dcf5cefd889e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26eb59eb84ccf30ea87a2e2ca9b86330ac414486c8a08e38903c723a2f4b154f`

```dockerfile
```

-	Layers:
	-	`sha256:d573e54e19dced2d67ae71d835eae18c3ce5452c8c200256ff27b43be5ef9351`  
		Last Modified: Wed, 18 Nov 2026 02:43:17 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json

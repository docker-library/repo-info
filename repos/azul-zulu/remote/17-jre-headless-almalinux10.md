## `azul-zulu:17-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:5e228070cd368f0bbac761d0856d5e9a3049600708e3ec80c0d3ca2b514a3a14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d07e0247655331bf8fbb3a79d49aa9130495c1724f0eed6eef69ee5dc250f598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138503867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdde41e184f3439bdb9828337a0ff8ec2e0967c3ee0a543592b2f952f16dc5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:19 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:19 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683ebc257aafbaad2cf8910695c182645b317f1d6d96e39a4d7b34226dfde048`  
		Last Modified: Wed, 19 Aug 2026 17:35:31 GMT  
		Size: 69.9 MB (69941405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6083370378bb76ae77c276776539352c088b8a123a7c90fd22be6150be475005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998071638b27dbd9ed39411ae038854e843b7288f750cc60553df840edb98c0e`

```dockerfile
```

-	Layers:
	-	`sha256:a4df1cb174b20a3ae536165ca709bab4fc49ea9c5c89df3f11a5ab5c557f4891`  
		Last Modified: Wed, 19 Aug 2026 17:35:29 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3e7e5867de7a0b1408811d4c5e3bd65d776f16fd7e46cbd1e2c2fb727d72fc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137104815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1eec88fcb2fab271583f5d70309889e82f00b3ef4d88baaa00901efb297b78`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:23 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:23 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:23 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897b487aac5d357077ab9ae4ca468fc830895cb1e43e46a9ef836c19f16c44cb`  
		Last Modified: Wed, 19 Aug 2026 17:35:35 GMT  
		Size: 70.0 MB (69962854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:49aa857e4edd6772883763b30ed33cba2c09c10f57ce4c6a2342c70f35db74fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a8e29619b8f2bc1364ffe87c69bff43370baaa96d35a6f6f77f06f65b8a4f6`

```dockerfile
```

-	Layers:
	-	`sha256:bf06f4efdcee577b90a412b95c1954135822956acddeade0fe60f4d57ba41887`  
		Last Modified: Wed, 19 Aug 2026 17:35:33 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json

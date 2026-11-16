## `azul-zulu:11-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:041c28d147f293b9c6b1b46c29eb95a7593d5ff7f6656aae014873f22d24c6d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:26a2498c2de3838e369ae7a41a57ab90965ae586d0751786d078e8f5987313af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215869971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe1b909358902596929140a5d2f9da35e9ce216db41621dd9a10bb799c8df8e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:35 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:35 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496404d7ce6190a96b9ba5dd5bbaad6769a8a75c5fea976ac32f4c4d2cc2adec`  
		Last Modified: Mon, 16 Nov 2026 18:10:50 GMT  
		Size: 146.7 MB (146744192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b700851a855b706a331cb29ea28460aa6d0bcfa32e86e88a29bfc32755bec45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91bdbae62f7a412b4eb7832fb8b8e43dfa718a6750ca6eba848a7180d54d26f`

```dockerfile
```

-	Layers:
	-	`sha256:962040b1f621411937543db212b4ecc3113e88b67b56f68cfde5f92c67584993`  
		Last Modified: Mon, 16 Nov 2026 18:10:46 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e7708328342e63bcf5acd85318773c5e5e2a0dbeb8b25556d0a836c154165003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214110238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23035eda963a52f39188af8321394d9f3d49beeb7d635872db04bff282e49390`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:20 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c55735ea633c5337e15c2ed7fa88ac8674d8bd64a6d473f493f48cd5e3b23`  
		Last Modified: Mon, 16 Nov 2026 18:10:35 GMT  
		Size: 146.4 MB (146412422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f9d6b941c0babcb1544a766e8545e1d87ce9f637f781e5406ce152e5eb55380c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4e472bc123e4aa25f9d5b7de6c71e349d8333f56ae0f3009747707eb82213`

```dockerfile
```

-	Layers:
	-	`sha256:c2d3e3fcd29a53d56213fc8ba3b533f7919ccf8133c411620cdd1c77652a1927`  
		Last Modified: Mon, 16 Nov 2026 18:10:32 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.in-toto+json

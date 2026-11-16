## `azul-zulu:11-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:8fbdf8b49d1c567bc0a8d1269581faa817da77535081fee95f9561379391817e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6ca2d30e8ac400c9ef0f4fe6ed27647f78531aba3cabcfc2013366ed6f9ce4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135205883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5fad7b5f49f7a5791ff100a4a77439096a7cb2b7a88b03efff067bf925687d`
-	Default Command: `["\/bin\/bash"]`

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
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43eb1496c64daef5227cf289bb5f564852dc57de29f0acd1ec61f0616a81c5a8`  
		Last Modified: Mon, 16 Nov 2026 18:10:46 GMT  
		Size: 66.1 MB (66080104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c5ed6d15a84ee1624df4b27782aa48d8902373e8b2f8ad66e5232514a80dd214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636d6e0b562d2e4daf9b58c1b23d3b4a05b02f1dc6f6488f3e9c061994474580`

```dockerfile
```

-	Layers:
	-	`sha256:1a34edc64c2fee4c208f1b226b4c2922b8ed3fffd2d8834b9f38b2dd61bedbbe`  
		Last Modified: Mon, 16 Nov 2026 18:10:44 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:66324af60dda9ba6400f894d94f4afeee63772c831fbe7720ec7f66993e9b76e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133598989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024836d91e43f40c34cfb81a873f478fa50fe65ad80ee108383b12400f1b97a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:12 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:12 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:12 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff2bfb83799358a9efb37964f2480f6c0c77f9126abec39f7fa571f16db68c1`  
		Last Modified: Mon, 16 Nov 2026 18:10:23 GMT  
		Size: 65.9 MB (65901173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5752ed32aceb69236613186e54b1183ae7f81b94d458d1b65bc0449edd80826c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19a39f5e918affa8bc5c659c2055646a2ac62741d70c35546831ffe7c30acd7`

```dockerfile
```

-	Layers:
	-	`sha256:ce5c2415b229e37cc2573c909ac0baeb70d11a3ee21e20890bd21b5e70d0f0c1`  
		Last Modified: Mon, 16 Nov 2026 18:10:21 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json

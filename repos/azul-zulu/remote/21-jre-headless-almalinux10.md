## `azul-zulu:21-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:1daf4c141b7055c1ae67f48d58a918a988b169476f321940fae89d3c809a6c98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f024a9f2cdffb3c699de3ff705e0fbe2fbcd36ebe2765ce0ca5af1a23ba6cb85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145459811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2411e07c39f750bd2c65ea3d27ae7f9825eeeed07d4a372d9acc79611dbac4b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:38 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:38 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:38 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7f905b03c32df35bb4bb359afe038e69eef8ce134400feb05293fb148e763f`  
		Last Modified: Mon, 16 Nov 2026 22:09:50 GMT  
		Size: 76.1 MB (76089331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a9d4da203ffbab2806b280d6db1f1d41b7d1c2ff51f96b2af0322965203974bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a66b9ed191c254cba94878503b486c5cec73c3f89867dfcfb6f6ab593f57a35`

```dockerfile
```

-	Layers:
	-	`sha256:55278fba971a37eceb67845c3148e190bbf32a3c9d3c6f7d39b7719974c9dd90`  
		Last Modified: Mon, 16 Nov 2026 22:09:48 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:44d28842dd92025bfd673f23019b0cb650f7d47fc581b090e0054259acdb68e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143696337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df354c002a38148e751c358c2417e6249813f9e479df0b5f25214ebb3389765d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:42 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:42 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:42 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ed2d9563f3d21816946c48876c5057f3c03a41fb06fe9cedb43e655598073d`  
		Last Modified: Mon, 16 Nov 2026 22:09:55 GMT  
		Size: 75.7 MB (75745763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:122eebc7c554a9cced80e28bca02bd3e95760bcdd55baee9563e73855771d58f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0966a7ec841f5e83505c121bd1c659362de301a4f4255bfe50f3d2047e985016`

```dockerfile
```

-	Layers:
	-	`sha256:b9709070ddc951500b35c52ba59cd939572f721bec8b0b3d873683b9518da1d5`  
		Last Modified: Mon, 16 Nov 2026 22:09:53 GMT  
		Size: 9.3 KB (9342 bytes)  
		MIME: application/vnd.in-toto+json

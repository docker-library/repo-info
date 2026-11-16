## `azul-zulu:26-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:9f16a93e5a2f0ccbf560bce2c93bbe9d3686b575d80bf8708432e8b758b02458
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:403edbd3d049a8623a51c6fb9675b0e359d1fbc1bc85b6adee8779e5edbe978c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161487059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af657bd88734eac47b2350834b99e3b1a53e4c6f4d6f6ba0f9f7482a03007b81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:06 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:06 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:06 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e450dd955aa832d0c43da19bb96ea72c26292a461bd0ca0a5164d37342ab9a`  
		Last Modified: Mon, 16 Nov 2026 22:10:20 GMT  
		Size: 92.1 MB (92116579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1c6fdb45775b46627a96bcf940baf6f16a14a0d39d417117beb154f173cfa539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5334bcaddbddc0365e04dd94b45f6548a4ffba79e50ebe6bd0e0cef9f9c815cc`

```dockerfile
```

-	Layers:
	-	`sha256:4f8032219e900025ee409d872c640c5e8fe55815183066fc23155ca61c620daf`  
		Last Modified: Mon, 16 Nov 2026 22:10:18 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:20bca23cb5b6315c7a9f22dbf82f07fc6f435a12dabe40220eaff65af8c81f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159981746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e48b619388ae3bda591d2e9472d66d088f0d7adeb25776cc7c3bc6282f61dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:05 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:05 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:05 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1933a9d55cec53979ca4a8ea7674cc2423d1133de8ab2cdd90ddabfe0298df`  
		Last Modified: Mon, 16 Nov 2026 22:10:20 GMT  
		Size: 92.0 MB (92031172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b98db9f799e0374765c2b65e82289eb7c7b84f0d8e0b01a56e9652b3f659b07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24a11a3cee3c0c2730c8386fedba5acbc96dbac7183b11ac7eda226f7c3a969`

```dockerfile
```

-	Layers:
	-	`sha256:15dcd9803912efd58922a1c3c80e671fb230c8b79ac0a56059a9efc831d7c4cc`  
		Last Modified: Mon, 16 Nov 2026 22:10:18 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json

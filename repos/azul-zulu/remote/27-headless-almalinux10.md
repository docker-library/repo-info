## `azul-zulu:27-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:d7fba1772ed60b79b3030c0d448155b0de1462db7ec43f9f531e965ccd6bcf5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5229eb5e3c7e4589c0151c269fd7cc02d4ddfd552a25b5f18d70bf5428171fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254372400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5012ba80af1e62b422b3335facd317ad6541becb33b7d185c672e90fb884c98`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:19 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:19 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6603f2f4e7da3f0d41825af3d03d5824165df5b523a182a0f1fb95ce8ff311`  
		Last Modified: Mon, 16 Nov 2026 22:10:38 GMT  
		Size: 185.0 MB (185001920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:962a7925f6b27e34f3791b53e70ed52f707256a37879b37ded5e05788ee31c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c848f522299f35f6aafeddc0f4afbd4c269a3471cbd2f4fcce0ad245384d0cc6`

```dockerfile
```

-	Layers:
	-	`sha256:f65cbfff3c537a99a2c3b9e48bc81459fb16a337e9e61b9fd8603d3e0794139f`  
		Last Modified: Mon, 16 Nov 2026 22:10:34 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e6ba0a9293703d420b21e65775928f46a9c4d2e4da95eb9c611de7571699e1f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252626463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ffd54f15d3c473de9d2fe071c127156649295b95b61ab61b85b59cfa269f56`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:20 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af6b6a166d8d7077043b088443cb4fb625f5da65efc02d83cc4bc12e541715e2`  
		Last Modified: Mon, 16 Nov 2026 22:10:40 GMT  
		Size: 184.7 MB (184675889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a72709603d297a72e17269f4b5b34a569f4ced48157cfb0f04674f7e2e8ffa82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1f83f22224f9749ae98472c4b4d269bf69ebfb644cc203dc33e5681367036c`

```dockerfile
```

-	Layers:
	-	`sha256:d6282a009a8c1977d60293a144f69b584b99ab55f658723e8e5b214503c03de0`  
		Last Modified: Mon, 16 Nov 2026 22:10:36 GMT  
		Size: 9.3 KB (9344 bytes)  
		MIME: application/vnd.in-toto+json

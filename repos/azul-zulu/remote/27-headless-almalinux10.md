## `azul-zulu:27-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:a2ee8bcf92287988d7a5b8c3398934ec607a4006bee78e1a8f8dd1dbda183fa7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ba9eab8cf7ef10a9e6bbe0af361956b4d30574312546e2ccdb53f519b7fb63ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254399483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7a2baa0b2cc4e45592057f592f1aee87a4592840d22d4d1a61f173a2c18fc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:45 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e977871253df95a4c086792998795915ff9f68f070ed1681ef5c980fdecc98d0`  
		Last Modified: Wed, 18 Nov 2026 02:44:03 GMT  
		Size: 185.0 MB (185029003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4c454d599054c3942be7f07ddd18a56237f0658aeedbb3131c3113cea3112e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94296cd768cad87f9e4cd6d1fc06778aecb9bd81669a79137603b9794cc83c`

```dockerfile
```

-	Layers:
	-	`sha256:8d613ff1c8c1ce6700cf788c14409b410794179673e7addc85940db31fab8089`  
		Last Modified: Wed, 18 Nov 2026 02:43:59 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b7767c8015f948cd2ce81c1642da5d24d5b64205f6dd6735ca66f3fb65aa8faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252646608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa47366b115c79e75babe5ea0876ea84aa3978639f2354bbc094fcbfb805dd42`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddaee8994755daf3fa55e5eef8a620dc1e4202a25bdf4eb4d4c135218930fc3`  
		Last Modified: Wed, 18 Nov 2026 02:44:05 GMT  
		Size: 184.7 MB (184696034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:afabc9331586ecbbcc734f49a78b801e1b053c9def21addfb83db1444cea11e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cd8786f0ec7ee71f37faa0ead5930a39db40c0b8d96db3441a96bea86bfd2`

```dockerfile
```

-	Layers:
	-	`sha256:10f36b4caa1e15728d5892748d625192e509995176a60bf44c6c0477db672539`  
		Last Modified: Wed, 18 Nov 2026 02:44:01 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json

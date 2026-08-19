## `azul-zulu:26-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:2ea517bf886bcb5936d855d7af136d9d0d269ae8f2afacb49b617d9b6aab2290
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c87db9915a595d32ac72d9f4dd50792e698aaf31808b9eccbe7f447ecec7cb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159621797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4586eca7e078df36a40e45e77896ed0b7a52ff57254fea0e810415bbb0a79509`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:14 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:14 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e84f3fafd297d2d137cd88f775c3cd2536a43beeebb8c046228520b2b3faff3`  
		Last Modified: Wed, 19 Aug 2026 17:37:28 GMT  
		Size: 91.1 MB (91059335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fe134dedc40e6a0358e55e55c2276b1f5036961a335128bbda44a7e9a1b215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2497cccbe534ef9f7bc17dca8e5adc29f9263076d441d4a4732afb1a0e285554`

```dockerfile
```

-	Layers:
	-	`sha256:a128c6617044b4259be404129740e7b6be6a43b4815d36d6c06e1895fb035a11`  
		Last Modified: Wed, 19 Aug 2026 17:37:25 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2b542b3a9c63277aadc7cda6f15bb011a0d53a4c5bfa3ffcc06cf2b634990bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158118610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a703e60f4a033f324af0ced173da7dd265b2b83768fc1421c051bad012e22493`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:34 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9189555cf6ec3f5b6cec268330b109cd3caf28f7a2e5d6f54bf6754fe924be2`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 91.0 MB (90976649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5542ec0257eddd58f22df937f9efb0684c0cd0712b347343fd7893b51e8c078e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afcb7ac63bbd7526f9af700c05ba1c6625d523d9a6a19cad79c13fce8173d27`

```dockerfile
```

-	Layers:
	-	`sha256:35be63c655d53193a6e8611bf58517ea36d134049a0e6adc1617518367483be3`  
		Last Modified: Wed, 19 Aug 2026 17:37:46 GMT  
		Size: 9.3 KB (9328 bytes)  
		MIME: application/vnd.in-toto+json

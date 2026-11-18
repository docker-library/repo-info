## `azul-zulu:8-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:9f68638fc292e2a0dcb4cfc833bb32c68937fd8a3246e72b36cb494c6e6ab52b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c22f55f36b46fe12b2eccc8a2027177961b010861e0e6528f23299ff9e315896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120746812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a75d157083296a609b678fe96143d561f524e937c4999b5b7a6e3f8bc2055f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:33 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:33 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433d17601b21da7f6a8c56204505bfd5e3b77e9d8f21e7c3268407271bee4394`  
		Last Modified: Wed, 18 Nov 2026 02:40:42 GMT  
		Size: 51.4 MB (51376332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:627471f07c1046af842344c46f7fc52604dd6d1adcd31456cd31359be5e98b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0ad11181a5ff318b6dd943cf97a21ccf2a52203dc4911ebaa5c8e5f2605fd6`

```dockerfile
```

-	Layers:
	-	`sha256:2e50622cfa3770cc045084f098bba4afa42d010b89f1662347a272bf0893c9e9`  
		Last Modified: Wed, 18 Nov 2026 02:40:40 GMT  
		Size: 9.1 KB (9128 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1bbc781d927af914cead797c4b8d4ff8131f40ba5a2d2db32457c6eef004b066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119592307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0888db4852e923de17cd27347984a7ba08f695eb40782ae652246590a158bb3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:32 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e2745bea9ae619bd006734790428871919356242b9d1f9f2829b6f4c12eb5c`  
		Last Modified: Wed, 18 Nov 2026 02:40:42 GMT  
		Size: 51.6 MB (51641733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:01d4a434c2efc3d4c763750941935ddbb5996ba3d56bb44d53bdd7bc80dfe5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ce2bb62e4f0804bd1fadb4e67bcae24b60348412d978c02b5e0eb9c3e4e7bd`

```dockerfile
```

-	Layers:
	-	`sha256:3b4f0d36a0315de84eb068906082d48df6ef7814a21d1d1e5775ee2100b6d265`  
		Last Modified: Wed, 18 Nov 2026 02:40:40 GMT  
		Size: 9.2 KB (9219 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:731c3df67cd90f8c6eaf3c8833f014b03ada480e6bf65c581586493d43233fd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f3c0b1ae2683b9504432ba7b3aa2097cfb7160b87e845d3518341902a4ecf86a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187361127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edcccbfcc1f2d9eece9500b716c35688ef38a8aaf537f55ddbf2372d3dba9a70`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:20:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:20:31 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:20:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:20:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968b3b64edea06954cd391ecc73747b9e4d1ee2c7a7232506bc7b3b0a6a4e77c`  
		Last Modified: Wed, 21 Oct 2026 01:21:08 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b7924469a31f9e87dacfd19d9185d6b5c82c76b1183561ca3ccef9ad3ea711`  
		Last Modified: Wed, 21 Oct 2026 01:21:07 GMT  
		Size: 66.5 MB (66494140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d0466572978e4872678ea1d78139f37f5488ef1fe6f851bd63d1991c436354`  
		Last Modified: Wed, 21 Oct 2026 01:21:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f356697e639a82cc6bc69191d3bc50622948061f54b624ea2b920dbe0ac546c`  
		Last Modified: Wed, 21 Oct 2026 01:21:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a35d9f10afe4c61e305985419f3ed594e890a0d28879cbf540ce9fb20e9f390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9586b19493644170d001becffd3e69562a5a0198e4590ef9acb0173824772ea2`

```dockerfile
```

-	Layers:
	-	`sha256:859d2c24ccde6adcdb3360d6c34db62646554ace9646dac239e7c4c1d08752bd`  
		Last Modified: Wed, 21 Oct 2026 01:21:04 GMT  
		Size: 5.1 MB (5086105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:390d54f6bb617a543911666194a6d24c964c92994ce98f2c6cdf0bfdc19fb279`  
		Last Modified: Wed, 21 Oct 2026 01:21:04 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:261b90daf05cfe0d46d903dd7d93d173ffcba115e523256809baaff93028b336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186162802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86457c2cd27505a121d89d6b723e5d601441ebd034487cc8959bdbd715136ef3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:26:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:26:27 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:26:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:26:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6dc9d5b39ca89a4a743615ca68f929e7f7e71f24e40e10e1ed73493ce9b168`  
		Last Modified: Wed, 21 Oct 2026 01:27:03 GMT  
		Size: 91.5 MB (91528853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c99911db33bb93a460070ff0d24ab8a6b0e57adfa3950bad46d9a73b4b142b`  
		Last Modified: Wed, 21 Oct 2026 01:27:02 GMT  
		Size: 66.5 MB (66494479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f637a709276836c8986d572791d22086a3e2f412c3d1294b48dfe4378d389d`  
		Last Modified: Wed, 21 Oct 2026 01:26:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2496b6b75ed1ddeaaff1a68847c4f7cbcee2e70f96461c42f022916d8a36270`  
		Last Modified: Wed, 21 Oct 2026 01:26:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fab0513115772f8f063f95abfa4bb71bb411c88157a6dd3846ed47ddd8a540f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc99e573808516b324badb45c6786a3d809336e7ed4a13d2c60698bfc225ab8`

```dockerfile
```

-	Layers:
	-	`sha256:17847b3827f3bd9e3fb13391f8b4bed5336b2b8ba41d8d9d70ae42b9ed397a19`  
		Last Modified: Wed, 21 Oct 2026 01:27:00 GMT  
		Size: 5.1 MB (5091887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09f5ea89293c9c96b18a459e7eb621ae330f4902cad6b1503b2c1a6f7941e40e`  
		Last Modified: Wed, 21 Oct 2026 01:26:59 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2d11c26c26b0ea1d7367323aef9c0348e0d101fafa858c9b9c26b1b05aef4d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198135981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcca7619f2e2c16f078c363f6644e5d4ca8a9a41d4caf912441c99b6f5728825`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:17:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:17:49 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:30:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:30:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:30:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:30:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:30:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5c80906303dd2c3506329826dc50a79e29f917ec2a088bb2d847a50163986e`  
		Last Modified: Sat, 17 Oct 2026 06:22:15 GMT  
		Size: 91.3 MB (91256227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1693f61710ae10fcf16dd7e869aa065c49826c9029229b3a402ec5d4c811155a`  
		Last Modified: Sat, 17 Oct 2026 06:30:52 GMT  
		Size: 74.8 MB (74786277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3997802b7352de0955f0c97c873d18b9f9435ae4caca20ebb5efc98b97d4436`  
		Last Modified: Sat, 17 Oct 2026 06:30:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1360fedefbf5138a0e42197d905bc7d4acdf40da4bc108aedac4b5082f00c73`  
		Last Modified: Sat, 17 Oct 2026 06:30:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1919255bda9d95eb42d1b4fe28a398b6e2c48ac3096e2be0591cd97f705234b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d05513e7978dec579845837015ba27d577acc4ae654431010c5a153244b43f`

```dockerfile
```

-	Layers:
	-	`sha256:e88646818deda9635842ccf6f689cf6a901c517a3d3fe1ca0813401d6a9dcadd`  
		Last Modified: Sat, 17 Oct 2026 06:30:50 GMT  
		Size: 5.1 MB (5075882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:121e3f0824d8ff78ab184a02de932c58693824d9b28d4d65e60e1d9a2915af2d`  
		Last Modified: Sat, 17 Oct 2026 06:30:50 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

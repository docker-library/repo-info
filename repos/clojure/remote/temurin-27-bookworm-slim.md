## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:e65e1ff8479ee14556313f1231b2b7521d58b4c4b584560cd4c71f4d95d0606a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1654dcf2215015efcdb9285bcd5569b217a21c7279fc844ab3aeb1c082160724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188408805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303695fc33bd9af6d9bfbe0df15f59169da2dfa8c18f986cab6c9e9325ef0ea5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:11 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71987727f28153bfc329064d2ab3b21eccbb69e4d96166711fbcddd331324e5`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 93.6 MB (93647847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c63ebca8ef323f2829b2bbafe7b0f8f846da20d5531601b72544ead6fc553b5`  
		Last Modified: Thu, 19 Nov 2026 22:09:46 GMT  
		Size: 66.5 MB (66511432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d525919b0f8f631215bc21e9f990af4d0c0d0f3c8a524ad6d03cbccd5638cda`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d9ed9b287093a06f74d3096cb62569896db3738f4c57581463d00a383ae8ee`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fe651033c8cd4a98137ff85d2e264771aa1cd9ef692a154ef3f0196fb8225e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d976b0e7e9dbaef7521a5106737c2be2189c07456c88264d7a21dda8c6067f`

```dockerfile
```

-	Layers:
	-	`sha256:35b57ac1ec95d01c8021abec67489ec75c9bb6aa6147cafcfc8e525bcf54e517`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 5.1 MB (5081769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c03062353f3c6077abc46eecc0c4dedb6add3a5482a9ecf60ef94841d54ee3`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b53f17077e7f6b4699cb02b82f9e7faa95c0301d174612b0cebf4e25ba00012f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187303373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d290ae379aa8e348b0ef9f46c43565c0936025c5fe3a30c0097ba0976b8417`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:11 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16a5e684db0406238f7701935df4dd1dbeabf75dd7eb898f6e3bfcdadf43256`  
		Last Modified: Thu, 19 Nov 2026 22:09:53 GMT  
		Size: 92.7 MB (92660441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec62a34a0fe4b2edde01bce304f6262b0449fb5d583fdba3a3b42c553df8ba3`  
		Last Modified: Thu, 19 Nov 2026 22:09:52 GMT  
		Size: 66.5 MB (66497029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d525919b0f8f631215bc21e9f990af4d0c0d0f3c8a524ad6d03cbccd5638cda`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333e3ce05570d463713e5d69ff5cab2b7f45e0b3756c60554b8a3d847f83f6fd`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6978642fc278a86f0885b092986f9fcb4f426fc6dedafa43955a43a8022f0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630dab8fb403af0e83a9e020548fa026f24efbd48403a8beb4e06d485d3a4c24`

```dockerfile
```

-	Layers:
	-	`sha256:4179af5057a82375feb1ad48d725999fd6b3ced3ca90aa5030d9501e7335b9c8`  
		Last Modified: Thu, 19 Nov 2026 22:09:45 GMT  
		Size: 5.1 MB (5087527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3ee1338f87cb2250216340aae8fff5b0a0e4785cdc3464e6257a4c9e3667ece`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:658fab0bfb37c914e2331be844757d15417c04659ed142cba54d590e092e4ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196354555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91220ccdc00385326b2113650db20d8ee98e2990272801a7af3ea08f86cb260b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:57:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:57:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:57:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:57:09 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:57:10 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:57:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:57:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:57:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:57:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:57:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e328b077fbb289a7224548f3f66aed926c1845e454fe64ec7d047f63f3c2da`  
		Last Modified: Fri, 20 Nov 2026 01:58:31 GMT  
		Size: 91.9 MB (91925735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca48e717dea3061f42f4d43d59a38600d7d271782f6aaf38b33ebf8d92130e0b`  
		Last Modified: Fri, 20 Nov 2026 01:58:31 GMT  
		Size: 72.3 MB (72333716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbae7d9c660bd3712df80b0f4e6c96ccbd7523c262922e0009e116d99663da3f`  
		Last Modified: Fri, 20 Nov 2026 01:58:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620d13a76d2c45941a575ff70a3f1e7a801fb08e6a54d57dea0e6a71cb574d95`  
		Last Modified: Fri, 20 Nov 2026 01:58:27 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:637bf8a686b40f568ee9a50e83e08e2a971b1dc562908b56ddb9c914c2348fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5085033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e47290f368d3f9e302b1bbc986bb3e4453fda56dd421b5d2a6802bd7326aaa`

```dockerfile
```

-	Layers:
	-	`sha256:6d1e0f20aa92cf786ddb66c881e69767b667034e51ce7a6d777e1189ceaac9b1`  
		Last Modified: Fri, 20 Nov 2026 01:58:28 GMT  
		Size: 5.1 MB (5069002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dcd13025c59bc1892ca1f5528eb05d9cfc0c81755b9c708d45c161be6b349b5`  
		Last Modified: Fri, 20 Nov 2026 01:58:27 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

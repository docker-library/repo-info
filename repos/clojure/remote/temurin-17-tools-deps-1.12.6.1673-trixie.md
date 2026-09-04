## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:eca659972a0bfe23737e231fdbd54df279e0c04e0eaa5f51d965c266648bf222
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bb441962a6ee8d3ffb1186a38c1cccf727096add89020bfaf07cc6be037bfc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281232061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d27ec2c4033dd60eebeba7cdf06770650aae5758933607d9dd94fcb0579fe6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:02:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:27 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4434f66e5ef395d815a008b56fd37398424b792cf843575742418e4cb470df9`  
		Last Modified: Fri, 04 Sep 2026 00:03:08 GMT  
		Size: 145.8 MB (145822632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82013fdb005064ca0904bf3c458de7110b6955336e14fa1ead764cecaae9abe`  
		Last Modified: Fri, 04 Sep 2026 00:03:07 GMT  
		Size: 86.1 MB (86070560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8aec9bdc1a0daead1b5ff646f3b7f63f15e05cc6ef9e612e9321027796cbcd`  
		Last Modified: Fri, 04 Sep 2026 00:03:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9336a89fd94fefa9b42c67f3b5e45e72ff8213d412e2c6b52c2988f969f06b06`  
		Last Modified: Fri, 04 Sep 2026 00:03:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:614e0e5f71dd244f498c02aab3ad40731a07075cf953fcf8ee22f45bb8fdd53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f4df1e2d4b3e69f71812aebf437ac2ab9db7cec83d9f254e7c4671cf2ca4f7`

```dockerfile
```

-	Layers:
	-	`sha256:636804814d7ba1011a240fad935cfbab0fb3ba3dc7c7ec52d1eb9cb0557d0c64`  
		Last Modified: Fri, 04 Sep 2026 00:03:04 GMT  
		Size: 7.5 MB (7473869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9849aa27f40a0579af531357bbe98d60f3447e51ef080715ef0533226bf8db92`  
		Last Modified: Fri, 04 Sep 2026 00:03:04 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8fcdf6ad8f5ff54da9dd5247a6e647a6300e2112cb68730d63e289a0df3a4908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280620995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2939cb91231cf06fd43b4337a81837cc5566403af854c94f82dd98eacaf7b240`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:02 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4d5eca46abce8c233ea3e14a86bf5ee586afc19081810b9ab88864cc8901a5`  
		Last Modified: Fri, 04 Sep 2026 00:07:44 GMT  
		Size: 144.6 MB (144647525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06baaa16b286374a4c2a55cae9053cefbd7bb1fadaabd2a0b5f3f9ab7bf13d4`  
		Last Modified: Fri, 04 Sep 2026 00:07:43 GMT  
		Size: 86.3 MB (86267578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7696c3b2d3c24501200e453e49a411a68d6ebc2a77d3429aacb831ef985f7b`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b68ce874c9c4f0cd9d3dbe95d804483cd7b04cc3b68c92c541b57121fac171`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e81585ceb21aa2e0205571bff20e35c772a3bd4cf9d1504038f4a6d7d13e87de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a71f0b3064acb0affc0e58a0dbf12365341aec117edeedc06f0841d7a46e92`

```dockerfile
```

-	Layers:
	-	`sha256:a57e97c902de634d7f9bcf2959f6506229bdc4e04a43f5e2bfad3dd2348c8dc0`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 7.5 MB (7480262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f2c36373842fe8c908357ffb0641a07bcaf2d604c22ae07ffdfebbc4681243`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:79957bd698da31c2e95f16ac0cd7442d38892080cd0dbd407f5173f195703972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290556383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857d14738e2905b9cf7cfc7376301fe039a7240a7661d74ba7a21bd472537426`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:18:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:18:41 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:19:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:19:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:19:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:19:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:19:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c587e8c05e5833b4d45b74199cf9a651eab2e3f101ec5eaf37d8920fd8e3657`  
		Last Modified: Fri, 04 Sep 2026 00:20:11 GMT  
		Size: 145.7 MB (145674311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd1d4187b0727a7e688815495acaa46a75618a537477705c286dc5b98d8dd7b`  
		Last Modified: Fri, 04 Sep 2026 00:20:21 GMT  
		Size: 91.7 MB (91716750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b95ad7c98c3c991990ce4be882bbb8ee11670817ad7c782f7fcd81ea111da83`  
		Last Modified: Fri, 04 Sep 2026 00:20:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98df818634ebf67f2e452325eae319fe8f54ab3fc09542bb8b7e7f10edf4213a`  
		Last Modified: Fri, 04 Sep 2026 00:20:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:33c364ae730c918badad1160333f836fcc51cd6e33088bdd3d34c039c97c06bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c733df7d2f6bf85a35270a65fc0ffed8cac174c6850c1917ad675ec9f0bcd54`

```dockerfile
```

-	Layers:
	-	`sha256:abc29cf9bfec492b303815e7d8597a890010285e0416cd39f010d517da63273f`  
		Last Modified: Fri, 04 Sep 2026 00:20:19 GMT  
		Size: 7.5 MB (7478290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09fb11e13f5a865c26f2e8d9460b7ff7c093e7b174f48450524aa10b39155cc0`  
		Last Modified: Fri, 04 Sep 2026 00:20:18 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

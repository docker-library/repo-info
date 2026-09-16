## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:3e0e7f055f8c4fea642c4ed121cf16a541b405c234df73130332ba2c6b567396
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d57212644ebb7f748e2886a6e832b9b56ae67edd8f39d7a4744844c4250a7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293529819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a4e4119557aeddb893451703ca9020a58b715423d50ea15ef1719926b62e9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:49:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:49:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:49:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:49:18 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:49:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:49:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:49:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:49:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:49:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57977d031e69910890530859e5d7ba18785996fa0b4c0eb9064e49fafdcafe5`  
		Last Modified: Wed, 09 Sep 2026 03:50:01 GMT  
		Size: 158.1 MB (158120370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edfaf4451abe7da1c0e3e94b4861194e7563de15963426ee80b949741d51ffd`  
		Last Modified: Wed, 09 Sep 2026 03:49:59 GMT  
		Size: 86.1 MB (86070578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfc94e8468b7a9210b876a646c9844fa83519d3444a24664ce749f34a2a8a9c`  
		Last Modified: Wed, 09 Sep 2026 03:49:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38eac57f54e92d24e5b9508faef2678152ce3a62ab292e1b190b0d9e518202b0`  
		Last Modified: Wed, 09 Sep 2026 03:49:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c93394eff4edeee35f68a15ceed5751bca39ce499a79b7c03c99ac2d74894ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700f33975502a59c0bb2522a8a5bd74c2f9a720f0ecd99ac482addccc3d2a06f`

```dockerfile
```

-	Layers:
	-	`sha256:3f483b5c5bcac2af03e2a4859516af78150bf0327d111e93a3094d4cd416e960`  
		Last Modified: Wed, 09 Sep 2026 03:49:56 GMT  
		Size: 7.5 MB (7475721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916473cc04b4e6827a2bcfd891b10dc256262c9ff08c9fefdeafb097dce4a3c9`  
		Last Modified: Wed, 09 Sep 2026 03:49:56 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e02a76a08b7562c7252bededadc8f513b624ae11677ea1eab2b9c80a97a24c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294737105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22307f3e0f1e9a9c7a41c9c94e73184993a3b3e31a971830f707dd9882ce633f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:36:38 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ff1a65cf220c9f79ec6421b83578ba816205855f698846ce3ef6eebd24b565`  
		Last Modified: Wed, 16 Sep 2026 04:37:22 GMT  
		Size: 156.4 MB (156401947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f30254e694b156c6317fc57a53e7b4825c5b2ca91ae1e420b03b2a7ff5992e`  
		Last Modified: Wed, 16 Sep 2026 04:37:21 GMT  
		Size: 88.6 MB (88629262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2bdd3268449cf34f271669bc548a35845841997a5882c2f6321da3ac697f4`  
		Last Modified: Wed, 16 Sep 2026 04:37:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6def54d9a03cbd81aeedd77da46acd84d128371a96820779b1a889f2a6476b47`  
		Last Modified: Wed, 16 Sep 2026 04:37:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1130001bdfc2f2640955266998de35d326d4128d6db9cbfa07259494b1e10878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b11fdc431b150b1f8965fd5e8108aecce316447d1c60a4af8b468e3baaa111b`

```dockerfile
```

-	Layers:
	-	`sha256:8a9ec367cc92ccdcc138840eb4df3090137a984e6a595f1284eb6504b9f1ec0c`  
		Last Modified: Wed, 16 Sep 2026 04:37:18 GMT  
		Size: 7.5 MB (7482186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de78d5c862efc2c1aa05e47c81a45a64bf0a1e9cff306855a4e1abe24b949ed2`  
		Last Modified: Wed, 16 Sep 2026 04:37:18 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:04ffb70a335ca6986e11ebce094af219cd1a60bbc9de741fdb27b728488ebc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303156945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d11a704f56934231256f0b9e24bd4693f6cbeecf26a4708c1d17553834ebfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b846aa1037bcc14aa3dae0e19a7b57cb8145cc608a6b54e2c37f603b810fd4`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 91.7 MB (91716725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283bcb980e4ec2e828452fc4aef292abdab0993c317b4c585090757212235ff7`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a239143c0c0c7a180363ae3463d69b1b7855d2062493da9ab46ad281fa53bf9`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:52c93bef30514d1f6c8262907a709d9a717c1b43940816f6ddc8078be6abf8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4db4369d59f86bd0357ead81c341783a76aab9232224cde925daad5c1b20cea`

```dockerfile
```

-	Layers:
	-	`sha256:20435ad2061816471b0fd16f9b57b30ea3d421cbac3f442dd82402b99e61aa7e`  
		Last Modified: Wed, 09 Sep 2026 11:11:43 GMT  
		Size: 7.5 MB (7480142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb46dbf372c6ac7f52018bc5397a96ee75a6b75297e15123c140b682f2b77e22`  
		Last Modified: Wed, 09 Sep 2026 11:11:42 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

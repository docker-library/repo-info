## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:f7aa86b3e735169aefbfe3a2bb436cc9223961f6c8e2e7f7275c53a65da4fe85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ac5e412e01d2344a44e2a4ca7a0be97a5208f9f6f9039f22f0adeea89799f45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224582010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5fcc5390efe3f18f5e70877ceb48b95b79ebb38f0934f8f98cd2eada570f43`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:42:35 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f19c4bd4325c8797cd683c9eb72b3051d5c63b0a781f06774680e756f155714`  
		Last Modified: Tue, 10 Nov 2026 00:43:14 GMT  
		Size: 92.6 MB (92598928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aceb69c313ef80f891aa71bf0c83b883d18c4a040a3752f7b0d8e9dbe6c15`  
		Last Modified: Tue, 10 Nov 2026 00:43:14 GMT  
		Size: 82.6 MB (82569028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467202a2c016a5bbf4a02a801516d187eb5f64b462b3732492f97b33537e4264`  
		Last Modified: Tue, 10 Nov 2026 00:43:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3337a22f1b0e5cc5a1a47367a99eaae7f67f300f15635db86efe51d87d38782c`  
		Last Modified: Tue, 10 Nov 2026 00:43:11 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:479d26eecb879b7e72a9a22a3b2ae4416311c0fc6636482a03fe9fb0e4871cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95093f145c8a0c004f9283873c5a62fb4c850cfab36741b13fd535b3c1fd3274`

```dockerfile
```

-	Layers:
	-	`sha256:8351b2069d72dc7870f07ef89b2ba7caf6adfe923b599b5a17c6a724c37cb7e9`  
		Last Modified: Tue, 10 Nov 2026 00:43:11 GMT  
		Size: 7.4 MB (7444823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c27784c33dea8f61cf8219fd92d20b416d8b7849849358dba42921bb566d57bd`  
		Last Modified: Tue, 10 Nov 2026 00:43:11 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e0d694b2b49993bd8df2223844f36e2a34775af25e48a33afba93e9cc0d019a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e6080e6b5e180c50f488bf7abcdda76cc7d1a7ad2117c428124f18bb653e7a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:42:09 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b326a9d2a7f326c98d914b71152205ce822d3e33282448e81db231b074fc2bc`  
		Last Modified: Tue, 10 Nov 2026 00:42:49 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9347047162de163a165365fd656ea341b62f60118c61f8f9eb4381fff97b3591`  
		Last Modified: Tue, 10 Nov 2026 00:42:49 GMT  
		Size: 82.4 MB (82392832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd744d66f8c6010a72c19afd446392700ec2907ac212ce33978e825780334358`  
		Last Modified: Tue, 10 Nov 2026 00:42:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0658fcb2e4c19acd45c0fb404372a25f16b2cb3f667788df51b865ca929ba8c3`  
		Last Modified: Tue, 10 Nov 2026 00:42:45 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1403b3425f716900df650e140899f6728a97ef6f154850eb3fb71d06eab9b000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f54056594251ce11323d4b9ab3c8341d70a7178f7ad58bd994c72789bcfba1`

```dockerfile
```

-	Layers:
	-	`sha256:894bbf90e96098492da4ea7c90e4777d333c5c65cb68cca875d65ad249a27507`  
		Last Modified: Tue, 10 Nov 2026 00:42:46 GMT  
		Size: 7.5 MB (7451237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0808cc5c0f06ae440beb1fed971c5d29b24de81eba6d1075c90154ecc9f185d`  
		Last Modified: Tue, 10 Nov 2026 00:42:45 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:496b816e6e3dd1604bbdc7416cf897f433c5ecf7914a8934b7a76a1c62adba0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231336122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8593ca10d34bdd3649d6a1a40dab17eaee21758363c22076375fcd1eb6f6a700`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e585def3d42ccedd8909a3cce1803f954976f123c537c8b40d2154dde8cc09`  
		Last Modified: Thu, 05 Nov 2026 16:13:02 GMT  
		Size: 88.0 MB (87997266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c243e5bb979022bd1081f662991122301742bf185ed1522239288bd604a990b2`  
		Last Modified: Thu, 05 Nov 2026 16:13:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b1cba74cc934ae3d9a55a31ef2544f832054506a39c071d404812283f4c2de`  
		Last Modified: Tue, 10 Nov 2026 02:51:53 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dd6abd54233771110f041e0b900c686837352898405bcbf5c7168f007001f184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c28700197976b6dc47eb90101a5f8961e8f5e8699af215c595ae2f4564969`

```dockerfile
```

-	Layers:
	-	`sha256:525a83d0a2d9894d4b070222172d103e610c8793c888a6202e1459282815a43c`  
		Last Modified: Tue, 10 Nov 2026 02:51:54 GMT  
		Size: 7.4 MB (7430703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5341d503e38e8a9f1faf3f6b9f176e153d4d2bc1174f1a6db9a9b2d9edbc82d`  
		Last Modified: Tue, 10 Nov 2026 02:51:53 GMT  
		Size: 16.6 KB (16628 bytes)  
		MIME: application/vnd.in-toto+json

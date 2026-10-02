## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:d33fb3b7ba9f00d74e38957fae4aba0ed0145fdf684f5b87eea31abd9afecc0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:7fe482b96e6d423fe7b3cc6b05202c92585b662bde3f23b4d52bcfbc2adc5745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272559543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654b42893cc80acbab0c4d0c781cd51b73e67e72d3f8f137e153915c4e9d2705`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:50 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb84b6b43e650eb0fb4f25b3c673ffa311eec1b0ef816bc851fd3b94ceeff117`  
		Last Modified: Fri, 02 Oct 2026 02:44:27 GMT  
		Size: 145.9 MB (145864270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97198ce71d12269b2cd6c818d61f840153c7234704167d429873cdefc251cabd`  
		Last Modified: Fri, 02 Oct 2026 02:44:26 GMT  
		Size: 78.2 MB (78191187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0834b60deab85d712cfda95a4428549f967fdd7aa064cc3c0eea007e2a710bd`  
		Last Modified: Fri, 02 Oct 2026 02:44:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1f590b8eb0fcd3b1cd65902821d9997614359ca84a7b226bfef2abf30676fd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a77fba3ccced133eb91d31e33ae4440aeca5c7b752e63dc3b82d4ed9e96935a`

```dockerfile
```

-	Layers:
	-	`sha256:862a49b0b4cae2fe52183bde9e33bdbeb9775fa4d6e99227877b8992d67fbc3d`  
		Last Modified: Fri, 02 Oct 2026 02:44:24 GMT  
		Size: 7.4 MB (7400156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:512ff95b9840d741adb9b0065cb92df46b3536288358a269f336e5edd4dde18e`  
		Last Modified: Fri, 02 Oct 2026 02:44:23 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:742ce99527a782ba4dedcd05785002089d4b84cc8a94a252593b52bc31dc49ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269141056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05ccb75b3fa6edc67e9d441912277711e8681f689596d1edb831e67161fe0d7`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:33 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82de0d9877b01598bc54ecf70e068b9ed2c2a81f26a5f4852fa02a92d31b625f`  
		Last Modified: Fri, 02 Oct 2026 02:44:10 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897a473b2afe02f2f433777ea2aadd460d248ec47154a753166d43d4849d7fee`  
		Last Modified: Fri, 02 Oct 2026 02:44:09 GMT  
		Size: 78.2 MB (78173975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0624992cecfdb242f663b1261c83dd774423d75a855d42a1700bd6d201194777`  
		Last Modified: Fri, 02 Oct 2026 02:44:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:776337563d7fef1620bf3a966c456445add37c3a60f52acb4fd2e12bc6bb5c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b575997ecba2241eb3677f34e1d39b5ca1bb3a52615e2ff31dafeffdb47ce1`

```dockerfile
```

-	Layers:
	-	`sha256:96a3a1a76103388f6292387575e82e892dc2ce79e5e0fdeaaa33aac601f728c3`  
		Last Modified: Fri, 02 Oct 2026 02:44:06 GMT  
		Size: 7.4 MB (7406537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf82e165a3278256e1087365b6c72254d2764fd04760cf67a7728cbc4ffd9e2`  
		Last Modified: Fri, 02 Oct 2026 02:44:06 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c5b8031762d8de43808ea37a68349ab8545cf4e1b53446a7046a56c564da71b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269437840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0abe8cf243ee9edd1f85a0afa4b8d5141f6b28cc488355a03c7e68f95af1ec1`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:53:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:53:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:53:11 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:15:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:15:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:15:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad3740b0838749c770279e0bf7b7d97899a4b4768efc5838aef599b62ddc5bb`  
		Last Modified: Sat, 26 Sep 2026 03:56:34 GMT  
		Size: 133.1 MB (133094725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c121775c2775082d8a8a44d118411bc0f1bb58878caf54110076dd470a1a87f`  
		Last Modified: Sat, 26 Sep 2026 04:15:46 GMT  
		Size: 84.0 MB (83993165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3d4370aeda0731ef236d57b71977ede899168c01a448fa63ff1513e106b70c`  
		Last Modified: Sat, 26 Sep 2026 04:15:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bc8a2ca686887c6ff5c61bd9cd2aac953baec4cdae52f090ff18ad8167bd0795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf4a27ca67670f57e9e13e37913ccb350b11026d1f4319f3560e1fff8ac5d2e`

```dockerfile
```

-	Layers:
	-	`sha256:8ca98c0964fa59f2a425cf6a6869e963cae04bf6d0af76eafbdb50795b0c278a`  
		Last Modified: Sat, 26 Sep 2026 04:15:44 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3543471e26445bea9ae31116cb2fdf7f4913d1eacb5507d96cdab8ae7c7f167b`  
		Last Modified: Sat, 26 Sep 2026 04:15:43 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-27-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:b15db7d5357941d810bc83dee35991dd3ffc87eca294625083f3942c620b4ed1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e421bea7adf2917625568bdcd424bdb0e41e66fa8884136c4271a55578397d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192456547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f282e17dd3c5ce6fbba7b0eba9753886eb5e6c2b14a9d86ed2e3828f09faa3b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:58 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e2506863eb1fd14dbf51f162aabd501b4b185ac51e8242572445d623fcb837`  
		Last Modified: Tue, 27 Oct 2026 00:55:37 GMT  
		Size: 93.6 MB (93622507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86860243b816e07fef134fb9d868fe140f023688fbca104be68d32175bb4219f`  
		Last Modified: Tue, 27 Oct 2026 00:55:36 GMT  
		Size: 69.0 MB (68989415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6f9173507175a212be333e62aaccd13ee95325213267de8e9100bc12731f66`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3fd94bfe07f635b1b9d288a0cb1d7c1ba15a1342431f023a9e6102e8ed852c`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:525491709523ff0863ab3f64cdf046a6bf7db645b8a9db2501991abdbfb4d29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ded1871ddd93a38fe69430ef3b098ca45ed95afadc40354e6bcc2731b3b4bc`

```dockerfile
```

-	Layers:
	-	`sha256:3cc10bb243beb5bdcd74a477675d1cb0c4d3ff823019e9781e25a82e185b45fe`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 5.2 MB (5225689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34dd1ca0afab278eef66ed9c5f70f34b9844d16eda04fa19161dbebd9325bcba`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:da41da5da004c17dcc7b4d59d2f9580587801ef0dbf012812d7bc48d35a1d507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191639291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86bad65c35669018d8f54ed376e250c7fb4f6a22fd4e6f41c6d410d83287f66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:51 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:55:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:55:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8950655d3ebc5d5cc9a8bec46e183660817182f5b395c5af6d8505ee7ccb821b`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 92.6 MB (92633115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342775ee14fdc1a6dba7a7e289e647738662cfbc7d6a8b801eab9c89cbae17e3`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 68.8 MB (68804655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc54e222db017cf3f510a2707471ac1e39c8db80c81cb717ac4c05f38a57ea2`  
		Last Modified: Tue, 27 Oct 2026 00:55:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c71192431390e391bcae36633e9d4f5d5216c0b244fcf4048f3638065631891`  
		Last Modified: Tue, 27 Oct 2026 00:55:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e8f9026107d3ae5c1c1c12dee547410fde4d21208412c83d1850e9ea52811dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66786d554fb3040ca505f67b9ad6ca4582e1a75baa16f59e13e58ba7c36c507`

```dockerfile
```

-	Layers:
	-	`sha256:ca78ad111e38172ae04d1bd5d7ef2a8a8fe031610d6b114586bc06e3f66a6902`  
		Last Modified: Tue, 27 Oct 2026 00:55:27 GMT  
		Size: 5.2 MB (5231447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07f53393950fce1b069699bfec9b3c064413c9847bfdb9ff885990b43248832`  
		Last Modified: Tue, 27 Oct 2026 00:55:27 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bf68fa8885f25fc1116c13cc7aad14b4186f87f5e93ed118ebe881782f1fe1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200327594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee89e544c760df6c2f6e3fffff9d279cd4c0725582a780e96b409f0e15b04e1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:21:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:21:37 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:28:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:29:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:29:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:29:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:29:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a828c2fdb7bfe67406011a719ce82adb7addc34d3cb8df199646234ff6fa682`  
		Last Modified: Wed, 21 Oct 2026 11:26:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30a5095976465d9783cea0bbf1db88e464551ff533a8907dffc66af00f7a16`  
		Last Modified: Wed, 21 Oct 2026 11:29:43 GMT  
		Size: 74.4 MB (74418816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acbb6c702ba7ccd27dcbeedbad27cc2332fdedc19780b5a46d8193dd28748d1`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160a0eb586d1e90b0cbf751749d2b3e7b46f4607532d0aa5b3c1f33256d9372a`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:316c2835fd3dfb95b76d8bd1ee1403ed56b085b5d200a1c6d9ec13f6c7783dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437c5a1737727d65d7ebac9438b175b05ba55a0fa9ae162af34f5a657ee3b557`

```dockerfile
```

-	Layers:
	-	`sha256:9602ba67251c3636c3c900f27254137838d23b2b225271b6a4bb265be79d8b1a`  
		Last Modified: Wed, 21 Oct 2026 11:29:41 GMT  
		Size: 5.2 MB (5213968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298db1b07aa715cbed4858da83ac136f827c9492f62fec00d620303a565e2007`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

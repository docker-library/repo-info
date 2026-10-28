## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:ec9125209268b68608a16fa05efef9352e08e13b1635a33ac203426f4eacc186
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:3672156bcd4bac93a09f67c34e8dbfcdd1969d9f523dda384ec2ef49dddd1974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ae149101f513af0c054a0891c436342213313c81d6c362ffa61182c3476828`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:13:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:13:01 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:13:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:13:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c11b5266a1589f523b978b6445fd43a4e80a5104d31b0b06fb362ce8719c11`  
		Last Modified: Wed, 28 Oct 2026 02:13:41 GMT  
		Size: 158.1 MB (158117458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6d23c09ea962f7d26546b0e810d872ded12fe53513a43271f310576293651b`  
		Last Modified: Wed, 28 Oct 2026 02:13:40 GMT  
		Size: 78.0 MB (77997036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4446f638da5afbd4024bdc7121ba5b925e11b5f183a6f8767acf91607a9d803e`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e61a6df1aee00a6ac67cc5f2c2dc095d415174e0fd7fb8b4ab42ef05337f37`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:90b9d045dcf45b72ca104ea3f5f59a3cfe171d719032a43891d4ff1ffd03cdc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22336ecf40e467b4e3cb9b5b83b431666e5f66d36c9b5f4bd322adc4344b3c0`

```dockerfile
```

-	Layers:
	-	`sha256:afa8f4b2f97cc42761d9fa645001e070d98271f71ac504788d9cf35ad9c5f924`  
		Last Modified: Wed, 28 Oct 2026 02:13:37 GMT  
		Size: 7.4 MB (7381105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55b75b07f97e6d3233d98373fe032ac809aedb8f9b2463ed96e297f9fc17e230`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:afa12579384e9e29c93709ac4bee2cea8273cacdda3664180e457b736199e994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282799665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370eb02a4a56a9a38e464da042af3b381ef86a0645dd274060a15e3d5dfde41b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:20:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:02 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e17c14f0c94160ab40885fc472d2b0782c768be9719855e43725372a3a58d0`  
		Last Modified: Wed, 28 Oct 2026 02:20:44 GMT  
		Size: 156.4 MB (156400671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72aab52f1aafc7baf715ffb142188ed5b77e04dd27dae719963b298fe1eb1aa9`  
		Last Modified: Wed, 28 Oct 2026 02:20:43 GMT  
		Size: 78.0 MB (77992781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870c1242f84b1aae7c675a4b610128483f608b952865e52a1ff4cba43bfc9b82`  
		Last Modified: Wed, 28 Oct 2026 02:20:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db8de88eaa086e6cb9996d5e8e769c477ea85a5f3a1b5c477547ee7e10aa9d7`  
		Last Modified: Wed, 28 Oct 2026 02:20:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fa0fd95c9fd8162cfb29f4ab64c17fac42b2b5b6fd1e39269307aa8162c23652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3fece04e5acceb3625aef3c9456fc916216fcdf12748735322bf76cdd28c74`

```dockerfile
```

-	Layers:
	-	`sha256:650a703a1d709f9d59a6c95e01f7dfad8842f0322865ab866832672d59dcd26e`  
		Last Modified: Wed, 28 Oct 2026 02:20:40 GMT  
		Size: 7.4 MB (7386892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293dc277db62cb785359b0c3111eb14b825883fc54e776e33259e89a3536c22e`  
		Last Modified: Wed, 28 Oct 2026 02:20:39 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c7f1461a00f4429809a3d4ac07be404772ce376f28cf7546bb217c7d75ac1c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294485916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f77897ef6856f64fb6850b1dbe22e78e2421b57773d8f64a49c840b1800b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7675b7da5067325f47a5feb11bc6143edec79b9d681e957d6a821c89da8551f`  
		Last Modified: Wed, 21 Oct 2026 10:47:10 GMT  
		Size: 83.8 MB (83837475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1c9f971b3e1a3384a3713db44d3b44cf413c3d1d096035ea0a14cbca9471a`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d70a4f45ec15df8dcb304cf005a4919a7f6cca1735a5d462b533c8a8dfafd63`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:78af099058bc50145cc1e99678897f0796e6f071f2ee54eb4c6eefc9f08036a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3b26baec0fe6c3ddbc3a9aff46106023bed7ef2153789cccee9d788991830a`

```dockerfile
```

-	Layers:
	-	`sha256:b0714a76402bcdd1696cf406cec3e1ae84baf3b5d261fd1454a527782b5601c2`  
		Last Modified: Wed, 21 Oct 2026 10:47:08 GMT  
		Size: 7.4 MB (7387107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:202018c16e5c4432a88ffcacbc321ac5bc00326ab4e9b36d10f682c6402e1337`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

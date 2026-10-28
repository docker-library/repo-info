## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:c0a95072af489047a395dcc40555c5d28ad2f9c021f2961c46392df74b316dbf
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
$ docker pull clojure@sha256:315d298dc18bc555d91f3737c690fc1a838d5064ba1c9909741233518ff38c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294473366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bad650588700489c3c58e99020d77b5ddc2163cca6783d7a7d685b0123bf815`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:01:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:01:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:12:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:12:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:12:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:12:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fd9654479c4bb6cdd09df80346641b637a1fb7664815e09e84bb78daf7d5c6`  
		Last Modified: Wed, 28 Oct 2026 10:06:07 GMT  
		Size: 158.3 MB (158282654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcddbdcb0f62e99d3c9dd878604c7627cdeea84a693c9f360ab90bc621ebed4`  
		Last Modified: Wed, 28 Oct 2026 10:13:10 GMT  
		Size: 83.8 MB (83823362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18101d35661e746ddd5ac8725f49ddc4b7b14a3c8666b12cf1a73ccbad1b54d6`  
		Last Modified: Wed, 28 Oct 2026 10:13:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1d5862c17ae4c7f240e74adafd7ac45259f72de5e23534ca098d9ec363b358`  
		Last Modified: Wed, 28 Oct 2026 10:13:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ecffd10bee9193028f409ec9444d0be0c36eeae13ab0e0a9b0e1c7e83c80acdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bae363fa792fa8382c3fea9e1af974fa2ab44a835786a69bbc0351c2f7ca41`

```dockerfile
```

-	Layers:
	-	`sha256:9fd80b98b6f38df5778d3aeeef17a6aa55ac0c86ec0f8f8ae356554a013afaee`  
		Last Modified: Wed, 28 Oct 2026 10:13:09 GMT  
		Size: 7.4 MB (7386329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3a9443836761ccf97c61012f311e93abe2a65e7922884dbc36a5ba78e41de8`  
		Last Modified: Wed, 28 Oct 2026 10:13:08 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

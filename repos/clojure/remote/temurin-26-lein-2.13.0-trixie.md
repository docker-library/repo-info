## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:a2a048354c54f96f2ca420128d01ae403f48bfba1cc3076de0e40f229102dc2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:10be3b61ed8d5b8047763a2a587c1e9a488f88ec0fb5a03edb65654a3a22a2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167356318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccba58c583bc3e5d5fd8b84f4f8de07d2f0256d29f45e8ee8cd434897475ab07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:25:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:25:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:25:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:25:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:25:52 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:27:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:27:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:27:01 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:27:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:27:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:27:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:27:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d9c81ec1c66e2a38fd5656ae4795e7f455c89c915705e6b174c6ea2891e053`  
		Last Modified: Fri, 25 Sep 2026 23:27:20 GMT  
		Size: 94.6 MB (94563490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b12fd0e228493ee5c4975c28902c4b723501709da08db060f0b38488348ea1`  
		Last Modified: Fri, 25 Sep 2026 23:27:19 GMT  
		Size: 18.9 MB (18897531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4176e1c94a51fdf245dbe987b6c754b9a84510dbf8aaff5cf480fcd8f4b6d836`  
		Last Modified: Fri, 25 Sep 2026 23:27:18 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e04acfd6b1f16462b7a99c30751529977dae44bb3b04417e963efc0636d9b0a`  
		Last Modified: Fri, 25 Sep 2026 23:27:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:91eeb04722d74e24dc88b825b1799df24a5d0af73a9c64801fe6881d645d3556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45a4ae71907271cc8be37d31ca01ca2d7b295292715949aa195f9bd09524ac6`

```dockerfile
```

-	Layers:
	-	`sha256:36467fe455cfbe9d8b2b9256976de24a37c55b6520bedbb67427928715326c47`  
		Last Modified: Fri, 25 Sep 2026 23:27:18 GMT  
		Size: 3.8 MB (3792640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75e8a046ac7007a414dd6182e458f78e0d715832d7af55e18eccd49c64dd666b`  
		Last Modified: Fri, 25 Sep 2026 23:27:18 GMT  
		Size: 17.7 KB (17708 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff441e9f840f457c93ad7b0ddc6f9624f0766c4e13f34e286fafdb683cceb696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166652622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad5f3a6dc2c124e0b8f3d1453a4aafa46c318369423f8ca02dc3e7e099f62cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:23:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:23:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:23:38 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:55 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebec80d53853c3a03991d0bcd7902df9cf2b6e633da41649241279103df93238`  
		Last Modified: Fri, 25 Sep 2026 23:25:17 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f042af4d086f5b863b820133afb3a6071eda777f0ddd7b8357fd682ee0ec3c50`  
		Last Modified: Fri, 25 Sep 2026 23:25:14 GMT  
		Size: 18.8 MB (18844585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784be4be6f9b0804bf959275d24f1832b30146336525ee20a90a227cadacb33d`  
		Last Modified: Fri, 25 Sep 2026 23:25:14 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25cba4fe1bc5bb1bb4b7850f3668fe57ad93dfde3a18ea25c902a2c9350753f1`  
		Last Modified: Fri, 25 Sep 2026 23:25:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:42bc2f09ab695f9b084f538915eb3ee10f3532791a09f4c3c4ae54407d393ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fcf9294271e5cfbc6e4ccda2fa552a0a099db5d32006081224377360ec2b588`

```dockerfile
```

-	Layers:
	-	`sha256:7267505701e1edfb50b571477c3c8dcbd0364789f219fe998a9731252be04d02`  
		Last Modified: Fri, 25 Sep 2026 23:25:14 GMT  
		Size: 3.8 MB (3792877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c0cceb84ea8a40dbc42feefd361feba7680a2828a8a3f05ea801a944e490c7f`  
		Last Modified: Fri, 25 Sep 2026 23:25:13 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:cb7bcd6c35535a6b0232cade7430c4c52d7ab861b76f2df838e38f873a0c67a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170003646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a74e1516a2dc3c93d7795cc6e681f6a9665406f0fafd83f844855535f1ce637`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:48:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:48:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:48:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:48:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:48:51 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:51:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:51:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:51:26 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:51:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:51:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:51:30 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:51:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97818a0dc9b01dc3b4304e7d1140df380e6f733d7e82c2323a42ed56ff550f7`  
		Last Modified: Sat, 26 Sep 2026 05:52:07 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1fd305ea95489c4d4c3394244acfb1998ac37279a177ff9bafa45bfd68610`  
		Last Modified: Sat, 26 Sep 2026 05:52:06 GMT  
		Size: 18.9 MB (18942086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd574e9a9c15cb0acde3bd8eb88b467a0f5feffa5458610cbc76408291375e`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e84f1cc64ba15283e0d69d7b050e22ac32fe27e775ce17ad95e266eeaff7634`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:679a42a8c43d5464b18607323263eb3d96018da16404e8d4b0f48b301ff69740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6e265cca50f7212014263be802a7902dd84665851205315827278f0fcfe14e`

```dockerfile
```

-	Layers:
	-	`sha256:bef88c206c42ef08f1ea53b84092536ed19fdf807cab93ead33bc54f281358cd`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 3.8 MB (3777574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c60b82ed6d4656aa811119d99fbec37f3284cae930747ec73ea239b765eee2fe`  
		Last Modified: Sat, 26 Sep 2026 05:52:04 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

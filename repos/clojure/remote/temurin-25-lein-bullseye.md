## `clojure:temurin-25-lein-bullseye`

```console
$ docker pull clojure@sha256:c0a96ad6431475429b51fd69cc700d44fee6f6f8a6ce267c78bff244e7ac14a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2c5388d4e4b0ad07b416a793a04a91baf2dd187e9e9c66bbe0e2a81970798eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167796629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f262b51ac71b3767a26460d3b18780577ae08e83ebadaa93ced1c3e2bcd0ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:34:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:34:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:34:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:35:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:35:44 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:35:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:35:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208af580724bca25d5619ef089fc0bb2a0cdb12c46a4b261dc330bddb89c7020`  
		Last Modified: Thu, 16 Jul 2026 01:36:04 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b6cd2241e5c9201756b827f799eb0adf10c2666b639e1224d956387d8b12b5`  
		Last Modified: Thu, 16 Jul 2026 01:36:03 GMT  
		Size: 16.9 MB (16929868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8d6a9cc376c24292ee7c301ce59d1e31cd868fb560ded6d20042c8779e6d50`  
		Last Modified: Thu, 16 Jul 2026 01:36:02 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d4ab8fcf3f15993674eb17de75ab85e280098ed84ddb736dd007d5c98bdd29`  
		Last Modified: Thu, 16 Jul 2026 01:36:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:b81382afca8296dff57c4d8172f528fefe9995df425e3967c63c9021b4ab0a1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b8ecdebcf41fbdc50cdbefeb696f1327dfad735bd1e7c6ca06c8d5eda50316`

```dockerfile
```

-	Layers:
	-	`sha256:552716a653985ecd4dbb34dbf32c6ee337b291a3d3fbae7c859eae0e0c03104a`  
		Last Modified: Thu, 16 Jul 2026 01:36:02 GMT  
		Size: 4.5 MB (4469063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f7700684c2b7ab1da256062d9b83c94765a0f2baba71ac86b4a4509aaf8852d`  
		Last Modified: Thu, 16 Jul 2026 01:36:02 GMT  
		Size: 18.4 KB (18372 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e007cf4c196d0f877eab654d2975eabf5758c6363185ec370444f481246d996b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165247376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6d06540c625a4b357af7f5d3868c88f2bf130568a1740bf05536f1a0b07099`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:30:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:33 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:44 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060522c9d4fe17fd810610624fc8a97c3f161229d41c34aeab932f23b2a55476`  
		Last Modified: Thu, 16 Jul 2026 01:32:05 GMT  
		Size: 91.5 MB (91542226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c407ffe8a116d5c50767028bbbae9693cfb89626a817d4b6cb5ee3170414d369`  
		Last Modified: Thu, 16 Jul 2026 01:32:04 GMT  
		Size: 16.9 MB (16928618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d6ce623c03c598b2711aa62345f19a0458dbe2fab89f6165d8c9efb57083e7`  
		Last Modified: Thu, 16 Jul 2026 01:32:03 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa04e636fe3048b639c786cf66a8a3fb7814f69df670d8d5f67c989d50d9f0b`  
		Last Modified: Thu, 16 Jul 2026 01:32:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:941216a3b67049b3c3d5080f515cdf23b8afb229d4223631f12ff2c06aa73034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4486576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8564a2e0d3e0ef45c36ff235dd7cc75581940cf41a05268bf05adb4f9e4b41a7`

```dockerfile
```

-	Layers:
	-	`sha256:40c19a5abbcadbeda061969d9047711cccdd019099a15697d3253a89dcce7414`  
		Last Modified: Thu, 16 Jul 2026 01:32:03 GMT  
		Size: 4.5 MB (4468058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb1a9a322106c3f9be1b85294b3c7b0f9acefdebb7bf0ac22f5dfb80e4dbbae`  
		Last Modified: Thu, 16 Jul 2026 01:32:02 GMT  
		Size: 18.5 KB (18518 bytes)  
		MIME: application/vnd.in-toto+json

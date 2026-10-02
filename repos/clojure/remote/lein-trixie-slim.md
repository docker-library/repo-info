## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:dd3a24ee4013c34f487368e9c4f26d1841e7901ee30dfbbf875e97303886e72c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7c47b1c80c00ca1f04ce7d6b55242c558e671451c80c61fc8201f7b720b040d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146688506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1019327aeaddeadffbad85035a9aa4edd9bc01eba678ffad5734b60d0922fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:49 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254689be5165bf6902e1808256ce254959c2a0ce136a3486385dbd1d8e4b1de`  
		Last Modified: Fri, 02 Oct 2026 02:50:09 GMT  
		Size: 92.6 MB (92618031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a0765c78df75c64621216096eba23949a6a64557db5ab977c87e9ada2588f2`  
		Last Modified: Fri, 02 Oct 2026 02:50:08 GMT  
		Size: 19.7 MB (19724447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df6ace7804a427ddd5c64004e87b251f0d24b7c2a211800f5f9157b7da94812`  
		Last Modified: Fri, 02 Oct 2026 02:50:08 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57155d31647e5707de59c5a500d56f6678eea9f033e60554ee50c770aebb6c97`  
		Last Modified: Fri, 02 Oct 2026 02:50:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c01ead12350687ee29131172f30d3101606fe1271b3e632e626426170341479d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d7a135a59642f7f9520070d3ae9446796960fe6917807db50ca9d7ca90b07a`

```dockerfile
```

-	Layers:
	-	`sha256:368bac97ed9b0f199d868d1a076dd459f5db6c1d4d3e28eb627ea0652a5948a8`  
		Last Modified: Fri, 02 Oct 2026 02:50:08 GMT  
		Size: 2.3 MB (2341081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2800c2b857b1a7cdfa0ad5ede995edc25ec41d5306348f08aefab5b60cd43edb`  
		Last Modified: Fri, 02 Oct 2026 02:50:07 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a7c11b3bc31d966ec579e1e23d8bef60a3317719a3aac43476770d8d496d82e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146279604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeec24a5155a6fbe0c1ecc711cc02d521fbbb9e44a44fc8552fb7d9a4d7ca2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:16 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:38 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6990cef67ab2c301ae1e100f2da3eb2d3857c130c33f4352137f374c85336d`  
		Last Modified: Fri, 02 Oct 2026 02:49:58 GMT  
		Size: 91.5 MB (91528869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8662f52fe35bfffc749de07f5efe97061c8d38ce15c772d33cce2d8029d899`  
		Last Modified: Fri, 02 Oct 2026 02:49:57 GMT  
		Size: 20.0 MB (20045436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c742857510177ae87056d432ff4264653ec6eec909e1042a2fbfa1beec336bb5`  
		Last Modified: Fri, 02 Oct 2026 02:49:56 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8b390799deb8517365401f30a2eb020b0c81c03df40b8a88b3be2362bc9c20`  
		Last Modified: Fri, 02 Oct 2026 02:49:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aa9af8154d84fcb4683cec02a2737b8096e7569afe6983574bd05fdbdd95e382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add9da1cced06a8a10aef6e047bef2c91995fc9d61bac760472650527f59fa1f`

```dockerfile
```

-	Layers:
	-	`sha256:8d921de2ee517f6a8b69e0bfed89e58260fe8dd9085745ea104f35999e030aa7`  
		Last Modified: Fri, 02 Oct 2026 02:49:56 GMT  
		Size: 2.3 MB (2340712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bed89b799ced016a95150f5cc31147b4c2814aabcd5e3594783205981fe7a16`  
		Last Modified: Fri, 02 Oct 2026 02:49:56 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7495509aec5acabd578bf685d2008b817b0fe0f7599def34eb56ff6657c260b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146195354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5247a55fd60bc6a77b62be1a85099f45a020155c00d8323650197e88e9f071c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:28:25 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:28:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:28:25 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:30:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:30:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:30:54 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:30:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:30:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:30:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:30:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a163626061f9d090892b27101085fc696e2d8227d87d635c9ee060ad079e5ae8`  
		Last Modified: Sat, 26 Sep 2026 05:31:33 GMT  
		Size: 91.3 MB (91256230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839ac4a7407f31b912a28d1d68f2b5154da6795625313a968cd64e3349cf2cf7`  
		Last Modified: Sat, 26 Sep 2026 05:31:31 GMT  
		Size: 16.8 MB (16782244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d795e9d620686574812ffc989720d3335eda672fc236fd51b38221c705dba6b8`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64156846fdbb1a6e6f540a095cb9c69aab095107e0dd46971732b45513eb8a13`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eaeda98c56b4467e64968692906aee7bcb1dfeb9de5bd649ae9f9f9776a32a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2248b3a22ec32665b5c50b030e97b85247bff87597482c886e7d50cb29a8cc7`

```dockerfile
```

-	Layers:
	-	`sha256:a5f69fea9b6da8e5600b8070906f551484f7d24efddcd7d3a3b708a12968d025`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 2.3 MB (2325385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a235247f5e758e454fab232e67db1b781d3746cff496f8a22fbb72893aaddb9d`  
		Last Modified: Sat, 26 Sep 2026 05:31:30 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

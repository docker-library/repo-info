## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:56a12dec5a3305b540b7e654d840150e2d854504451590384744403366b9781b
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
$ docker pull clojure@sha256:c2ed83f04158d9f855c5257b9d5adc5a4236e960b3cd0f3f92b0f466c0667a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146205517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19533e89cf31175a23f20d3e9527110ff89b906ff38fa0ad6a2205cc189fd15d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:38:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:38:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:38:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:38:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:38:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:38:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:41:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:41:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:41:54 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:41:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:41:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:41:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:41:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f78a9e985677056dcdd0088b36c6a3bccbb1c48ff1954f5c529444f55b34a0`  
		Last Modified: Tue, 06 Oct 2026 10:42:47 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7717095722dd8e6e00e45696fe8952bc7fc4d499affc087e55f1d2d297a673a`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 16.8 MB (16782011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4e9f4766699059631b9b470f9e9488c160395b8b4faff8133032e89dadd059`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be1a86c19e0688206bb69108392e1af9c8bdec33756f21db695f3e0d86f251`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8388308069ef816016c626cdd740ac9c0af816ae0342898ff4abed0599d8aa9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef47984c586a0fe4b5c4da11a41e11d7721ff547609b27da61ab9137f1c395f`

```dockerfile
```

-	Layers:
	-	`sha256:1c7d2c3a4a545c8339ea7240a9d40d6a4d4ff24c5a8b0959aa39d95d7291294f`  
		Last Modified: Tue, 06 Oct 2026 10:42:45 GMT  
		Size: 2.3 MB (2325385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dd7227282241fe90b9db9fe21fd21ff782858b0ba8ff0ca1d7591bfcc879b08`  
		Last Modified: Tue, 06 Oct 2026 10:42:44 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

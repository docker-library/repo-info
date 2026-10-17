## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:d30b5cd4a0336b05cac7f37905d3570739f73ff9782931673a2f9ac87a193fe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bab4fd6e30fd49cf3eb0117f43347ccb54e1fd2e06fe1a9db925d6dbee6697dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143720601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f16c3e0cf33c89f7fe618770d4659a484d87a35c20971a6acb6e49d04af01341`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:27:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:27:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:27:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:27:31 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:27:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:54 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:15 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8480cccbb8dd3f75b76cad1ce46e3748a3f7bdbf695077b0c6769c5bffd1a62f`  
		Last Modified: Sat, 17 Oct 2026 01:28:34 GMT  
		Size: 92.6 MB (92617969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f62c750d5e4f3cbd0ca4d203d4400455754daecfefba7805643e48e0ef820da`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 16.7 MB (16743636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4389a6cd89b0a9ed5bf08eddd9cf280a02dafe22f70bba0f76d48d293b7ef6`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1667827f5974bb977c95b1cc5fc6bb81bdd4ff7445baeb0bddc9141fb1fbd4e4`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:525d12310c1f7251cd6be6b6f92e67af69c13ef2322803799f8e21c1ead569aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bcb061c76c80c85e1efdda451bc0745e0fb0774a0ec7ec080bb474fb91b63f`

```dockerfile
```

-	Layers:
	-	`sha256:4729d0d7e7ab86fea6cd39d4b652a4f8cafc85d68b00555ac7e4d06c4fa893cc`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 2.3 MB (2341081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b255c650c5546d00c32c466fd86ecbedc80c3a4f359593a20a74b070c5640775`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8382a626c1acf7e96c2e54e0ed78c26ddf8ae3e5bf1b6b3ab599eae204ede08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142956650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af8c2f755fba0dfe4f2bde61aeadf509b9c871d02bc3d645b3dec57b8fd4e2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:02 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:52:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:52:02 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:26 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b71f63025e95f58e26c9fe34bea1b12392fc124d0aeb68a3a11ab6e2d951f4`  
		Last Modified: Sat, 17 Oct 2026 01:53:48 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04badba960aa70c3e1360b64169795be86138ec3e4fed98f5fce6739cc9d8623`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 16.7 MB (16711834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381b523b94ac2fe119c59c2629d65f4c6f4412ff1e19ac47beee953bd97318ec`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8768dd15964b0bf9f6721024cb48d3286ad3792a41baf4a14b08920fba09882`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:53c39047740e23696ca7bf94a54d9d7a6aab61803b098085cdd06fed4bd4e0e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b842872fcec64a92a3b4b6c50b04fbcab79dd8cffa6189b4d1f4fbc020af4f3`

```dockerfile
```

-	Layers:
	-	`sha256:5813d45db78e060c2e71640f95ba48b2c2aa0c98ccc176fad3b65b0726d0ffe2`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 2.3 MB (2340712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2b4b8c390f50cf5cebe70ff6ab1a68dd0d9591b43b86545d71db5cfc7dbe8dc`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

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

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

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

## `clojure:lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:bb64ba368dd8878c69bbd6b12d56f76c98e9895a1e8c73de375e1173efc9b29b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:49637f51f8e843c805555d0290348cc4d39847f92f8726ead3c91d8a435dc8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165407477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca77a66682c45dc80783ca4b129a481586580c29e75843febeaff5d6bd37016b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:17:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:17:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:18:23 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:18:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:18:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:25 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a17b8054833bf1479d6ced2b10b599b6693b2a5e426f8acbab02e85ee08216`  
		Last Modified: Sat, 19 Sep 2026 01:18:44 GMT  
		Size: 92.6 MB (92615104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc6909ee029a4e0580fb79a67dd5c4e44614b0c430a2f8568c968e8327ffa53`  
		Last Modified: Sat, 19 Sep 2026 01:18:42 GMT  
		Size: 18.9 MB (18897063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da96f9d13239a94629f5a45b1e93035bfba60b20c4b7ccac3eea3268e63dac1d`  
		Last Modified: Sat, 19 Sep 2026 01:18:42 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d68ab68fb870b27c97181886a29c3fe3a23a35414b708e50964610cdf5ad707`  
		Last Modified: Sat, 19 Sep 2026 01:18:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0dbb5caf15e02e9ab85abe53e9f7053c52822f641c389bfb604dd4da1d4c016c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5a6390bc83a23dbebe64eeb6fb66a48740f167341c078b85798f5fb2130678`

```dockerfile
```

-	Layers:
	-	`sha256:01d3a51b687ce3adc04d6e7a0a2fb9ea873353b658ac4ec6d5916c584a70350c`  
		Last Modified: Sat, 19 Sep 2026 01:18:41 GMT  
		Size: 3.8 MB (3795769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b9e3c3543eca5275fc0435378031acde373ec5d560a9745d5e53c66fb4e2ec`  
		Last Modified: Sat, 19 Sep 2026 01:18:41 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:643b5ac7ff6182594f3bac5c159921a01877b8870f2962ecefbb3f51f8e71728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164641599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0869d2a54b3f4e424e26c52216dacbdb0f38fcd1994bbb245e791fc690d8781f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:24:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:24:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:25:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:25:26 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd775212233d4357819b63caf14e5abbca09b46b545c29bce8cad69aba98397`  
		Last Modified: Sat, 19 Sep 2026 01:25:48 GMT  
		Size: 91.5 MB (91532239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f9feae9db5631dfe3fc46009ee8925646befebfbaaec316e27ac35ce7ad5c5`  
		Last Modified: Sat, 19 Sep 2026 01:25:46 GMT  
		Size: 18.8 MB (18844914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d619172b4d4ec366c284a3d7cb778948b20f04cd763a890741ab0a9bdccc8ca`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e66ac76c2a3952da9a7b3de555e19901ce5460ef1a6d6e441e0067a78e8135`  
		Last Modified: Sat, 19 Sep 2026 01:25:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4b90861db91ad7a765cc9cf5c389f7b9508f55dd1e52b7548f0073bcabe8f42d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21504d0dc764801f8b2486976357d04b32fa19ed585da84709861b958f470bd2`

```dockerfile
```

-	Layers:
	-	`sha256:853f77216b8b48ef9f84d72ea754b85c80ae4f6167a4f9ee0492f0bb837f38c1`  
		Last Modified: Sat, 19 Sep 2026 01:25:45 GMT  
		Size: 3.8 MB (3796030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e65e377a9bbaec23c334a0f16cbefe775a1d56b642a639318b7bfbdd30f1cc`  
		Last Modified: Sat, 19 Sep 2026 01:25:45 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:523631de2a935d4b964d3b28b95b466f6195351203d48354548e7a0c65c7a51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167908916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1716d1824bc601f0e40b786969ad458642ef91b78139bb103ac6c9054ff9186f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:15:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:15:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:18:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:18:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:18:34 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:18:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:18:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:18:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:18:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e95fc9c7d0c89df3d3a2d12f1bde2c70dbb64d136f858732aabae2980ff715`  
		Last Modified: Sat, 19 Sep 2026 08:19:11 GMT  
		Size: 91.3 MB (91255826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af731bbd4dcae0772ff05bc1fd6af02d47521e16c08c789b446e625f578ba739`  
		Last Modified: Sat, 19 Sep 2026 08:19:09 GMT  
		Size: 18.9 MB (18942364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d9fed3c35a0d1b02e8c64225a6ef6e13261ac4031bcc4171418ecf9e33bea7`  
		Last Modified: Sat, 19 Sep 2026 08:19:08 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba08386ba1b86008f587f464034be1f7934c88fece28e02dbd7cc6b195fb2c4`  
		Last Modified: Sat, 19 Sep 2026 08:19:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5c979d03e55125eab6e3117ce738b1bb4e0e9064d12b3bdad5263909d35076b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5ba6ddf89007a02385eed2e3abaadd5b97d6a40eb8fa5ca7055dd40936df53`

```dockerfile
```

-	Layers:
	-	`sha256:869936e1c94381a3f43ce1c72b7d69a28d79c936e363023a53bf8866621b2ad6`  
		Last Modified: Sat, 19 Sep 2026 08:19:08 GMT  
		Size: 3.8 MB (3780091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72a0455abbdac073f56a5811573b0d467457a144126400aad0601b2e7998ba72`  
		Last Modified: Sat, 19 Sep 2026 08:19:08 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

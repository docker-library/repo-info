## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:12d51673a6bd8d5bd7b03c747423cce313bbb0c1aad52a33c434678f20ce866e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm` - linux; amd64

```console
$ docker pull neurodebian@sha256:fbdfc040810469f3971d45487eed043882b780b5bcf9e84b658b30f9568fa594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59872525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c8094ec4e715e42f835294bb9ed26f79fb79029493f43e1dd062945078f8df`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96739d0cfe16877f0c4635ea0baac0ec7232e2e09121d3a0597a93878391005`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 11.3 MB (11273515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9228ecb552b986f4d92e0fbf29ba5055da414a9ccbb832701b075ae46c7b4e3e`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47538e51ac5ce08a0b53ea7a42d1e59dc1ba615536289283e2145e2f9e60d701`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06714dc91a283f5e2c59106e331f38872059957311c649a68e53f5def0780e66`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 93.4 KB (93399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b60c901e8bee75385e67bf84c213a6c84627ddd947befbefcda7aef216c3b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572b26f902234fc9a022b0e80df2ebb71efd81705f4aae2ca5dc380bc2b141b5`

```dockerfile
```

-	Layers:
	-	`sha256:67e44627bf80567f038decd3809db45023ace822f29beba6a083258102e2556c`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e99092e5e7c368ca093c6aa10dd16be2312d792d0feaa1219876826a96be2e1d`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2cb6f3a97ddec1dc08f1752044ede6cfe1dcc25776a5b0d1a1fa3b8a740d55c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6be3a02ed786529683846d9380dbf40d55b8d088ef54e84e6c28490c8b330b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62802245f7d5a218a5b0c634e4896126b67648f71b4a0fd98ca1292d7c6e4c3e`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 11.3 MB (11252910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98972636b4448cba1a229da712e1f823600bbd0d062805696276571b84e63972`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91327afba4bcca3bfad0df5e98a538cceae89301458b9997f6f615e49ff82497`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7ad9574f73a511860ad437c46ae4b4761f05f435dafbe309e8b39c7133eef1`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 93.5 KB (93538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8e3efa7e3fa3c793c217a143cc7b2a1bdb102e9cc0c1e3a852b0d5332da4c5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830358552b4e9446284a77b532da5598ae122b9bd73880bc3aaab828fce61eb8`

```dockerfile
```

-	Layers:
	-	`sha256:0d93e8371e4b99633d3ee4a916c3a9a99dd0d70a187ee6f46462ea3d3c441621`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f814722ed58ba84d94373d65f8d9edbe838c871aa12760a400007db89295fb`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:7524f4ec62c7e4ccf5671788959c05dff5a022b6c2cce8eafa97a61173b752e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca91736ea286cc775e1d4e7957db1c0ab708580aadca98167f91431ea04fe871`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a597111a5384d83467dd7f6cdab599057c20b593b8b097dbc81ddd3ad40d9cdd`  
		Last Modified: Sat, 19 Sep 2026 00:50:27 GMT  
		Size: 11.7 MB (11693100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ee5b22b9ad628a8f1f0b0fd87e14b665d2c4019ae07f2134737369d1c1ea31`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f5827a622a284189bc38dedd5d96761062cf95572ce047273cd6768e5ddfbe`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46da19a5c19638a79671056a8d1a2db5ceb45415ef5567c133be97a50124629f`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 93.5 KB (93450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6baa5e54bab0e273b0ef22de80f3d95d559828a7cfb28e367cdc6fa4fe882d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c64a83bafcbbdfa7c97cd2421650938da28cfa36eefbecef663bd3ba10b3e7`

```dockerfile
```

-	Layers:
	-	`sha256:93b4aded61ced94c8ff2a34f5c6c0f9947a0abfeb2a6db5af9f15a340cef0dd0`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd1dee58746eec2afef79b46ac75f02496e2612e27d1b8442d00b2e1ef0e169`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json
